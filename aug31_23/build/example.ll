; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@const_0 = private constant [3 x i64] [i64 5, i64 2, i64 4]
@const_1 = private constant [2 x i64] [i64 5, i64 8]

declare ptr @malloc(i64)

declare void @free(ptr)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @kernel(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, ptr %9, ptr %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20) {
  %22 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %0, 0
  %23 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %22, ptr %1, 1
  %24 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %23, i64 %2, 2
  %25 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %24, i64 %3, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %25, i64 %6, 4, 0
  %27 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %26, i64 %4, 3, 1
  %28 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %27, i64 %7, 4, 1
  %29 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %28, i64 %5, 3, 2
  %30 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %29, i64 %8, 4, 2
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %9, 0
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, ptr %10, 1
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %11, 2
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, i64 %12, 3, 0
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %14, 4, 0
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, i64 %13, 3, 1
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, i64 %15, 4, 1
  %38 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %16, 0
  %39 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %38, ptr %17, 1
  %40 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %39, i64 %18, 2
  %41 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %40, i64 %19, 3, 0
  %42 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %41, i64 %20, 4, 0
  %43 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 30) to i64))
  %44 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %43, 0
  %45 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %44, ptr %43, 1
  %46 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, i64 0, 2
  %47 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, i64 5, 3, 0
  %48 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %47, i64 2, 3, 1
  %49 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %48, i64 3, 3, 2
  %50 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %49, i64 6, 4, 0
  %51 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %50, i64 3, 4, 1
  %52 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %51, i64 1, 4, 2
  br label %53

53:                                               ; preds = %73, %21
  %54 = phi i64 [ %74, %73 ], [ 0, %21 ]
  %55 = icmp slt i64 %54, 5
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %71, %56
  %58 = phi i64 [ %72, %71 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, 2
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %64, %60
  %62 = phi i64 [ %70, %64 ], [ 0, %60 ]
  %63 = icmp slt i64 %62, 3
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = mul i64 %54, 6
  %66 = mul i64 %58, 3
  %67 = add i64 %65, %66
  %68 = add i64 %67, %62
  %69 = getelementptr float, ptr %43, i64 %68
  store float 0.000000e+00, ptr %69, align 4
  %70 = add i64 %62, 1
  br label %61

71:                                               ; preds = %61
  %72 = add i64 %58, 1
  br label %57

73:                                               ; preds = %57
  %74 = add i64 %54, 1
  br label %53

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %102, %75
  %77 = phi i64 [ %103, %102 ], [ 0, %75 ]
  %78 = icmp slt i64 %77, 5
  br i1 %78, label %79, label %104

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %100, %79
  %81 = phi i64 [ %101, %100 ], [ 0, %79 ]
  %82 = icmp slt i64 %81, 3
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %87, %83
  %85 = phi i64 [ %99, %87 ], [ 0, %83 ]
  %86 = icmp slt i64 %85, 2
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = mul i64 %77, 6
  %89 = mul i64 %81, 2
  %90 = add i64 %88, %89
  %91 = add i64 %90, %85
  %92 = getelementptr float, ptr %1, i64 %91
  %93 = load float, ptr %92, align 4
  %94 = mul i64 %77, 6
  %95 = mul i64 %85, 3
  %96 = add i64 %94, %95
  %97 = add i64 %96, %81
  %98 = getelementptr float, ptr %43, i64 %97
  store float %93, ptr %98, align 4
  %99 = add i64 %85, 1
  br label %84

100:                                              ; preds = %84
  %101 = add i64 %81, 1
  br label %80

102:                                              ; preds = %80
  %103 = add i64 %77, 1
  br label %76

104:                                              ; preds = %76
  %105 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 40) to i64))
  %106 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %105, 0
  %107 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %106, ptr %105, 1
  %108 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %107, i64 0, 2
  %109 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %108, i64 5, 3, 0
  %110 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %109, i64 2, 3, 1
  %111 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %110, i64 4, 3, 2
  %112 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %111, i64 8, 4, 0
  %113 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %112, i64 4, 4, 1
  %114 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %113, i64 1, 4, 2
  br label %115

115:                                              ; preds = %135, %104
  %116 = phi i64 [ %136, %135 ], [ 0, %104 ]
  %117 = icmp slt i64 %116, 5
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %133, %118
  %120 = phi i64 [ %134, %133 ], [ 0, %118 ]
  %121 = icmp slt i64 %120, 2
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %126, %122
  %124 = phi i64 [ %132, %126 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 4
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = mul i64 %116, 8
  %128 = mul i64 %120, 4
  %129 = add i64 %127, %128
  %130 = add i64 %129, %124
  %131 = getelementptr float, ptr %105, i64 %130
  store float 0.000000e+00, ptr %131, align 4
  %132 = add i64 %124, 1
  br label %123

133:                                              ; preds = %123
  %134 = add i64 %120, 1
  br label %119

135:                                              ; preds = %119
  %136 = add i64 %116, 1
  br label %115

137:                                              ; preds = %115
  %138 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 12) to i64))
  %139 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %138, 0
  %140 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %139, ptr %138, 1
  %141 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %140, i64 0, 2
  %142 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %141, i64 3, 3, 0
  %143 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %142, i64 4, 3, 1
  %144 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %143, i64 4, 4, 0
  %145 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %144, i64 1, 4, 1
  br label %146

146:                                              ; preds = %158, %137
  %147 = phi i64 [ %159, %158 ], [ 0, %137 ]
  %148 = icmp slt i64 %147, 3
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %153, %149
  %151 = phi i64 [ %157, %153 ], [ 0, %149 ]
  %152 = icmp slt i64 %151, 4
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = mul i64 %147, 4
  %155 = add i64 %154, %151
  %156 = getelementptr float, ptr %138, i64 %155
  store float 0.000000e+00, ptr %156, align 4
  %157 = add i64 %151, 1
  br label %150

158:                                              ; preds = %150
  %159 = add i64 %147, 1
  br label %146

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %177, %160
  %162 = phi i64 [ %178, %177 ], [ 0, %160 ]
  %163 = icmp slt i64 %162, 4
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %168, %164
  %166 = phi i64 [ %176, %168 ], [ 0, %164 ]
  %167 = icmp slt i64 %166, 3
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = mul i64 %162, 3
  %170 = add i64 %169, %166
  %171 = getelementptr float, ptr %10, i64 %170
  %172 = load float, ptr %171, align 4
  %173 = mul i64 %166, 4
  %174 = add i64 %173, %162
  %175 = getelementptr float, ptr %138, i64 %174
  store float %172, ptr %175, align 4
  %176 = add i64 %166, 1
  br label %165

177:                                              ; preds = %165
  %178 = add i64 %162, 1
  br label %161

179:                                              ; preds = %161
  %180 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 40) to i64))
  %181 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %180, 0
  %182 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %181, ptr %180, 1
  %183 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %182, i64 0, 2
  %184 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %183, i64 5, 3, 0
  %185 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %184, i64 2, 3, 1
  %186 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %185, i64 4, 3, 2
  %187 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %186, i64 8, 4, 0
  %188 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %187, i64 4, 4, 1
  %189 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %188, i64 1, 4, 2
  br label %190

190:                                              ; preds = %210, %179
  %191 = phi i64 [ %211, %210 ], [ 0, %179 ]
  %192 = icmp slt i64 %191, 5
  br i1 %192, label %193, label %212

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %208, %193
  %195 = phi i64 [ %209, %208 ], [ 0, %193 ]
  %196 = icmp slt i64 %195, 2
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %201, %197
  %199 = phi i64 [ %207, %201 ], [ 0, %197 ]
  %200 = icmp slt i64 %199, 4
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = mul i64 %191, 8
  %203 = mul i64 %195, 4
  %204 = add i64 %202, %203
  %205 = add i64 %204, %199
  %206 = getelementptr float, ptr %180, i64 %205
  store float 0.000000e+00, ptr %206, align 4
  %207 = add i64 %199, 1
  br label %198

208:                                              ; preds = %198
  %209 = add i64 %195, 1
  br label %194

210:                                              ; preds = %194
  %211 = add i64 %191, 1
  br label %190

212:                                              ; preds = %190
  %213 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 60) to i64))
  %214 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %213, 0
  %215 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %214, ptr %213, 1
  %216 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %215, i64 0, 2
  %217 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %216, i64 5, 3, 0
  %218 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %217, i64 3, 3, 1
  %219 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %218, i64 4, 3, 2
  %220 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %219, i64 12, 4, 0
  %221 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %220, i64 4, 4, 1
  %222 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %221, i64 1, 4, 2
  br label %223

223:                                              ; preds = %247, %212
  %224 = phi i64 [ %248, %247 ], [ 0, %212 ]
  %225 = icmp slt i64 %224, 5
  br i1 %225, label %226, label %249

226:                                              ; preds = %223
  br label %227

227:                                              ; preds = %245, %226
  %228 = phi i64 [ %246, %245 ], [ 0, %226 ]
  %229 = icmp slt i64 %228, 3
  br i1 %229, label %230, label %247

230:                                              ; preds = %227
  br label %231

231:                                              ; preds = %234, %230
  %232 = phi i64 [ %244, %234 ], [ 0, %230 ]
  %233 = icmp slt i64 %232, 4
  br i1 %233, label %234, label %245

234:                                              ; preds = %231
  %235 = mul i64 %228, 4
  %236 = add i64 %235, %232
  %237 = getelementptr float, ptr %138, i64 %236
  %238 = load float, ptr %237, align 4
  %239 = mul i64 %224, 12
  %240 = mul i64 %228, 4
  %241 = add i64 %239, %240
  %242 = add i64 %241, %232
  %243 = getelementptr float, ptr %213, i64 %242
  store float %238, ptr %243, align 4
  %244 = add i64 %232, 1
  br label %231

245:                                              ; preds = %231
  %246 = add i64 %228, 1
  br label %227

247:                                              ; preds = %227
  %248 = add i64 %224, 1
  br label %223

249:                                              ; preds = %223
  %250 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 40) to i64))
  %251 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %250, 0
  %252 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %251, ptr %250, 1
  %253 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %252, i64 0, 2
  %254 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %253, i64 5, 3, 0
  %255 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %254, i64 2, 3, 1
  %256 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %255, i64 4, 3, 2
  %257 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %256, i64 8, 4, 0
  %258 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %257, i64 4, 4, 1
  %259 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %258, i64 1, 4, 2
  br label %260

260:                                              ; preds = %280, %249
  %261 = phi i64 [ %281, %280 ], [ 0, %249 ]
  %262 = icmp slt i64 %261, 5
  br i1 %262, label %263, label %282

263:                                              ; preds = %260
  br label %264

264:                                              ; preds = %278, %263
  %265 = phi i64 [ %279, %278 ], [ 0, %263 ]
  %266 = icmp slt i64 %265, 2
  br i1 %266, label %267, label %280

267:                                              ; preds = %264
  br label %268

268:                                              ; preds = %271, %267
  %269 = phi i64 [ %277, %271 ], [ 0, %267 ]
  %270 = icmp slt i64 %269, 4
  br i1 %270, label %271, label %278

271:                                              ; preds = %268
  %272 = mul i64 %261, 8
  %273 = mul i64 %265, 4
  %274 = add i64 %272, %273
  %275 = add i64 %274, %269
  %276 = getelementptr float, ptr %250, i64 %275
  store float 0.000000e+00, ptr %276, align 4
  %277 = add i64 %269, 1
  br label %268

278:                                              ; preds = %268
  %279 = add i64 %265, 1
  br label %264

280:                                              ; preds = %264
  %281 = add i64 %261, 1
  br label %260

282:                                              ; preds = %260
  br label %283

283:                                              ; preds = %329, %282
  %284 = phi i64 [ %330, %329 ], [ 0, %282 ]
  %285 = icmp slt i64 %284, 5
  br i1 %285, label %286, label %331

286:                                              ; preds = %283
  br label %287

287:                                              ; preds = %327, %286
  %288 = phi i64 [ %328, %327 ], [ 0, %286 ]
  %289 = icmp slt i64 %288, 2
  br i1 %289, label %290, label %329

290:                                              ; preds = %287
  br label %291

291:                                              ; preds = %325, %290
  %292 = phi i64 [ %326, %325 ], [ 0, %290 ]
  %293 = icmp slt i64 %292, 4
  br i1 %293, label %294, label %327

294:                                              ; preds = %291
  br label %295

295:                                              ; preds = %298, %294
  %296 = phi i64 [ %324, %298 ], [ 0, %294 ]
  %297 = icmp slt i64 %296, 3
  br i1 %297, label %298, label %325

298:                                              ; preds = %295
  %299 = mul i64 %284, 6
  %300 = mul i64 %288, 3
  %301 = add i64 %299, %300
  %302 = add i64 %301, %296
  %303 = getelementptr float, ptr %43, i64 %302
  %304 = load float, ptr %303, align 4
  %305 = mul i64 %284, 12
  %306 = mul i64 %296, 4
  %307 = add i64 %305, %306
  %308 = add i64 %307, %292
  %309 = getelementptr float, ptr %213, i64 %308
  %310 = load float, ptr %309, align 4
  %311 = mul i64 %284, 8
  %312 = mul i64 %288, 4
  %313 = add i64 %311, %312
  %314 = add i64 %313, %292
  %315 = getelementptr float, ptr %250, i64 %314
  %316 = load float, ptr %315, align 4
  %317 = fmul float %304, %310
  %318 = fadd float %316, %317
  %319 = mul i64 %284, 8
  %320 = mul i64 %288, 4
  %321 = add i64 %319, %320
  %322 = add i64 %321, %292
  %323 = getelementptr float, ptr %250, i64 %322
  store float %318, ptr %323, align 4
  %324 = add i64 %296, 1
  br label %295

325:                                              ; preds = %295
  %326 = add i64 %292, 1
  br label %291

327:                                              ; preds = %291
  %328 = add i64 %288, 1
  br label %287

329:                                              ; preds = %287
  %330 = add i64 %284, 1
  br label %283

331:                                              ; preds = %283
  %332 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 40) to i64))
  %333 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %332, 0
  %334 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %333, ptr %332, 1
  %335 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %334, i64 0, 2
  %336 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %335, i64 5, 3, 0
  %337 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %336, i64 2, 3, 1
  %338 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %337, i64 4, 3, 2
  %339 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %338, i64 8, 4, 0
  %340 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %339, i64 4, 4, 1
  %341 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %340, i64 1, 4, 2
  br label %342

342:                                              ; preds = %362, %331
  %343 = phi i64 [ %363, %362 ], [ 0, %331 ]
  %344 = icmp slt i64 %343, 5
  br i1 %344, label %345, label %364

345:                                              ; preds = %342
  br label %346

346:                                              ; preds = %360, %345
  %347 = phi i64 [ %361, %360 ], [ 0, %345 ]
  %348 = icmp slt i64 %347, 2
  br i1 %348, label %349, label %362

349:                                              ; preds = %346
  br label %350

350:                                              ; preds = %353, %349
  %351 = phi i64 [ %359, %353 ], [ 0, %349 ]
  %352 = icmp slt i64 %351, 4
  br i1 %352, label %353, label %360

353:                                              ; preds = %350
  %354 = mul i64 %343, 8
  %355 = mul i64 %347, 4
  %356 = add i64 %354, %355
  %357 = add i64 %356, %351
  %358 = getelementptr float, ptr %332, i64 %357
  store float 0.000000e+00, ptr %358, align 4
  %359 = add i64 %351, 1
  br label %350

360:                                              ; preds = %350
  %361 = add i64 %347, 1
  br label %346

362:                                              ; preds = %346
  %363 = add i64 %343, 1
  br label %342

364:                                              ; preds = %342
  %365 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %250, 0
  %366 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %365, ptr %250, 1
  %367 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %366, i64 0, 2
  %368 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %367, i64 4, 3, 2
  %369 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %368, i64 1, 4, 2
  %370 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %369, i64 2, 3, 1
  %371 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %370, i64 4, 4, 1
  %372 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %371, i64 5, 3, 0
  %373 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %372, i64 8, 4, 0
  %374 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 40) to i64))
  %375 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %374, 0
  %376 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %375, ptr %374, 1
  %377 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %376, i64 0, 2
  %378 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %377, i64 5, 3, 0
  %379 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %378, i64 2, 3, 1
  %380 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %379, i64 4, 3, 2
  %381 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %380, i64 8, 4, 0
  %382 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %381, i64 4, 4, 1
  %383 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %382, i64 1, 4, 2
  br label %384

384:                                              ; preds = %406, %364
  %385 = phi i64 [ %407, %406 ], [ 0, %364 ]
  %386 = icmp slt i64 %385, 5
  br i1 %386, label %387, label %408

387:                                              ; preds = %384
  br label %388

388:                                              ; preds = %404, %387
  %389 = phi i64 [ %405, %404 ], [ 0, %387 ]
  %390 = icmp slt i64 %389, 2
  br i1 %390, label %391, label %406

391:                                              ; preds = %388
  br label %392

392:                                              ; preds = %395, %391
  %393 = phi i64 [ %403, %395 ], [ 0, %391 ]
  %394 = icmp slt i64 %393, 4
  br i1 %394, label %395, label %404

395:                                              ; preds = %392
  %396 = getelementptr float, ptr %17, i64 %393
  %397 = load float, ptr %396, align 4
  %398 = mul i64 %385, 8
  %399 = mul i64 %389, 4
  %400 = add i64 %398, %399
  %401 = add i64 %400, %393
  %402 = getelementptr float, ptr %374, i64 %401
  store float %397, ptr %402, align 4
  %403 = add i64 %393, 1
  br label %392

404:                                              ; preds = %392
  %405 = add i64 %389, 1
  br label %388

406:                                              ; preds = %388
  %407 = add i64 %385, 1
  br label %384

408:                                              ; preds = %384
  %409 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 40) to i64))
  %410 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %409, 0
  %411 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %410, ptr %409, 1
  %412 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %411, i64 0, 2
  %413 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %412, i64 5, 3, 0
  %414 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %413, i64 2, 3, 1
  %415 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %414, i64 4, 3, 2
  %416 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %415, i64 8, 4, 0
  %417 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %416, i64 4, 4, 1
  %418 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %417, i64 1, 4, 2
  br label %419

419:                                              ; preds = %439, %408
  %420 = phi i64 [ %440, %439 ], [ 0, %408 ]
  %421 = icmp slt i64 %420, 5
  br i1 %421, label %422, label %441

422:                                              ; preds = %419
  br label %423

423:                                              ; preds = %437, %422
  %424 = phi i64 [ %438, %437 ], [ 0, %422 ]
  %425 = icmp slt i64 %424, 2
  br i1 %425, label %426, label %439

426:                                              ; preds = %423
  br label %427

427:                                              ; preds = %430, %426
  %428 = phi i64 [ %436, %430 ], [ 0, %426 ]
  %429 = icmp slt i64 %428, 4
  br i1 %429, label %430, label %437

430:                                              ; preds = %427
  %431 = mul i64 %420, 8
  %432 = mul i64 %424, 4
  %433 = add i64 %431, %432
  %434 = add i64 %433, %428
  %435 = getelementptr float, ptr %409, i64 %434
  store float 0.000000e+00, ptr %435, align 4
  %436 = add i64 %428, 1
  br label %427

437:                                              ; preds = %427
  %438 = add i64 %424, 1
  br label %423

439:                                              ; preds = %423
  %440 = add i64 %420, 1
  br label %419

441:                                              ; preds = %419
  br label %442

442:                                              ; preds = %475, %441
  %443 = phi i64 [ %476, %475 ], [ 0, %441 ]
  %444 = icmp slt i64 %443, 5
  br i1 %444, label %445, label %477

445:                                              ; preds = %442
  br label %446

446:                                              ; preds = %473, %445
  %447 = phi i64 [ %474, %473 ], [ 0, %445 ]
  %448 = icmp slt i64 %447, 2
  br i1 %448, label %449, label %475

449:                                              ; preds = %446
  br label %450

450:                                              ; preds = %453, %449
  %451 = phi i64 [ %472, %453 ], [ 0, %449 ]
  %452 = icmp slt i64 %451, 4
  br i1 %452, label %453, label %473

453:                                              ; preds = %450
  %454 = mul i64 %443, 8
  %455 = mul i64 %447, 4
  %456 = add i64 %454, %455
  %457 = add i64 %456, %451
  %458 = getelementptr float, ptr %250, i64 %457
  %459 = load float, ptr %458, align 4
  %460 = mul i64 %443, 8
  %461 = mul i64 %447, 4
  %462 = add i64 %460, %461
  %463 = add i64 %462, %451
  %464 = getelementptr float, ptr %374, i64 %463
  %465 = load float, ptr %464, align 4
  %466 = fadd float %459, %465
  %467 = mul i64 %443, 8
  %468 = mul i64 %447, 4
  %469 = add i64 %467, %468
  %470 = add i64 %469, %451
  %471 = getelementptr float, ptr %409, i64 %470
  store float %466, ptr %471, align 4
  %472 = add i64 %451, 1
  br label %450

473:                                              ; preds = %450
  %474 = add i64 %447, 1
  br label %446

475:                                              ; preds = %446
  %476 = add i64 %443, 1
  br label %442

477:                                              ; preds = %442
  %478 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 40) to i64))
  %479 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %478, 0
  %480 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %479, ptr %478, 1
  %481 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %480, i64 0, 2
  %482 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %481, i64 5, 3, 0
  %483 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %482, i64 8, 3, 1
  %484 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %483, i64 8, 4, 0
  %485 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %484, i64 1, 4, 1
  br label %486

486:                                              ; preds = %498, %477
  %487 = phi i64 [ %499, %498 ], [ 0, %477 ]
  %488 = icmp slt i64 %487, 5
  br i1 %488, label %489, label %500

489:                                              ; preds = %486
  br label %490

490:                                              ; preds = %493, %489
  %491 = phi i64 [ %497, %493 ], [ 0, %489 ]
  %492 = icmp slt i64 %491, 8
  br i1 %492, label %493, label %498

493:                                              ; preds = %490
  %494 = mul i64 %487, 8
  %495 = add i64 %494, %491
  %496 = getelementptr float, ptr %478, i64 %495
  store float 0.000000e+00, ptr %496, align 4
  %497 = add i64 %491, 1
  br label %490

498:                                              ; preds = %490
  %499 = add i64 %487, 1
  br label %486

500:                                              ; preds = %486
  %501 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %409, 0
  %502 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %501, ptr %409, 1
  %503 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %502, i64 0, 2
  %504 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %503, i64 8, 3, 1
  %505 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %504, i64 1, 4, 1
  %506 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %505, i64 5, 3, 0
  %507 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %506, i64 8, 4, 0
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %507
}

define void @main() {
  %1 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 30) to i64))
  %2 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %1, 0
  %3 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %2, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %3, i64 0, 2
  %5 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %4, i64 5, 3, 0
  %6 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %5, i64 3, 3, 1
  %7 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %6, i64 2, 3, 2
  %8 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %7, i64 6, 4, 0
  %9 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %8, i64 2, 4, 1
  %10 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %9, i64 1, 4, 2
  %11 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 12) to i64))
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, ptr %11, 1
  %14 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, i64 0, 2
  %15 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, i64 4, 3, 0
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %15, i64 3, 3, 1
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, i64 3, 4, 0
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 1, 4, 1
  %19 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 4) to i64))
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %19, 0
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, ptr %19, 1
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 0, 2
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 4, 3, 0
  %24 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %23, i64 1, 4, 0
  %25 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 0
  %26 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 1
  %27 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 2
  %28 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 0
  %29 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 1
  %30 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 2
  %31 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 0
  %32 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 1
  %33 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 2
  %34 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 0
  %35 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 1
  %36 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 2
  %37 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 3, 0
  %38 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 3, 1
  %39 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 4, 0
  %40 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 4, 1
  %41 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 0
  %42 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 1
  %43 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 2
  %44 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 3, 0
  %45 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %24, 4, 0
  %46 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @kernel(ptr %25, ptr %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, ptr %34, ptr %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, ptr %41, ptr %42, i64 %43, i64 %44, i64 %45)
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
