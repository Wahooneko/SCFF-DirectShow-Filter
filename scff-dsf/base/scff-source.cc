﻿// Copyright 2012 Alalf <alalf.iQLc_at_gmail.com>
//
// This file is part of SCFF DSF.
//
// SCFF DSF is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// SCFF DSF is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with SCFF DSF.  If not, see <http://www.gnu.org/licenses/>.

/// @file base/scff-source.cc
/// @brief SCFFSourceの定義

#include "base/scff-source.h"

#include "base/constants.h"
#include "base/debug.h"
#include "base/scff-output-pin.h"

//=====================================================================
// SCFFSource
//=====================================================================

// コンストラクタ
SCFFSource::SCFFSource(IUnknown *unknown, HRESULT *result)
  : CSource(kFilterName, unknown, CLSID_SCFFSource) {
  MyDbgLog((LOG_MEMORY, kDbgNewDelete, TEXT("SCFFSource: NEW")));
  // newするだけでAddPinされる
  new SCFFOutputPin(result, this);
  ASSERT(GetPinCount() == 1);
}

// デストラクタ
SCFFSource::~SCFFSource() {
  MyDbgLog((LOG_MEMORY, kDbgNewDelete, TEXT("SCFFSource: DELETE")));
}

// DLL読み込み中に呼ばれるインスタンス生成関数
CUnknown* WINAPI SCFFSource::CreateInstance(IUnknown *unknown,
                                            HRESULT *result) {
  SCFFSource *source = new SCFFSource(unknown, result);
  if (result) {
    if (source == NULL) {
      *result = E_OUTOFMEMORY;
    } else {
      *result = S_OK;
    }
  }
  return source;
}

// DLL読み込み中に呼ばれる初期化関数
void WINAPI SCFFSource::Init(BOOL loading, const CLSID *clsid) {
  if (loading) {
    // DLLがロードされた場合の処理
    MyDbgLog((LOG_MEMORY, kDbgNewDelete, TEXT("scff-dsf-*.ax: LOAD")));
  } else {
    // DLLがアンロードされた場合の処理
    MyDbgLog((LOG_MEMORY, kDbgNewDelete, TEXT("scff-dsf-*.ax: UNLOAD")));
  }
}
