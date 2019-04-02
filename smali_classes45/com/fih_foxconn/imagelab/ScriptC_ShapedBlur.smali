.class public Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_ShapedBlur.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "shapedblur"

.field private static final mExportForEachIdx_ComputeIntegralImage:I = 0x5

.field private static final mExportForEachIdx_Dilate:I = 0x4

.field private static final mExportForEachIdx_DumpDepth:I = 0xb

.field private static final mExportForEachIdx_DumpImage:I = 0xa

.field private static final mExportForEachIdx_DumpIntegral:I = 0xc

.field private static final mExportForEachIdx_Filter:I = 0x7

.field private static final mExportForEachIdx_FilterWithBlending:I = 0x8

.field private static final mExportForEachIdx_Makeborder:I = 0x6

.field private static final mExportForEachIdx_MarkDilate:I = 0x3

.field private static final mExportForEachIdx_PackResultImage:I = 0x9

.field private static final mExportForEachIdx_UnpackDepth:I = 0x2

.field private static final mExportForEachIdx_UnpackInputImage:I = 0x1

.field private static final mExportFuncIdx_SetImageSize:I = 0x0

.field private static final mExportFuncIdx_updateMaxKernelRadius:I = 0x1

.field private static final mExportVarIdx_g_depth_buffer:I = 0x4

.field private static final mExportVarIdx_g_image_buffer:I = 0x3

.field private static final mExportVarIdx_g_integral_buffer:I = 0x5

.field private static final mExportVarIdx_g_kernel_buffer:I = 0x0

.field private static final mExportVarIdx_g_result_buffer:I = 0x6

.field private static final mExportVarIdx_lut_apply_crf:I = 0x1

.field private static final mExportVarIdx_lut_remove_crf:I = 0x2


# instance fields
.field private __F32:Landroid/support/v8/renderscript/Element;

.field private __U8_4:Landroid/support/v8/renderscript/Element;

.field private __rs_fp_F32:Landroid/support/v8/renderscript/FieldPacker;

.field private mExportVar_g_depth_buffer:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_g_image_buffer:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_g_integral_buffer:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_g_kernel_buffer:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_g_result_buffer:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_lut_apply_crf:[F

.field private mExportVar_lut_remove_crf:[F


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 34
    const-string v0, "shapedblur"

    .line 36
    invoke-static {}, Lcom/fih_foxconn/imagelab/ShapedBlurBitCode;->getBitCode32()[B

    move-result-object v1

    .line 37
    invoke-static {}, Lcom/fih_foxconn/imagelab/ShapedBlurBitCode;->getBitCode64()[B

    move-result-object v2

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 38
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__F32:Landroid/support/v8/renderscript/Element;

    .line 39
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    .line 40
    return-void
.end method


# virtual methods
.method public bind_g_depth_buffer(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x4

    .line 116
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_depth_buffer:Landroid/support/v8/renderscript/Allocation;

    .line 117
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_g_image_buffer(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x3

    .line 104
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_image_buffer:Landroid/support/v8/renderscript/Allocation;

    .line 105
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_g_integral_buffer(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x5

    .line 128
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_integral_buffer:Landroid/support/v8/renderscript/Allocation;

    .line 129
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_g_kernel_buffer(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x0

    .line 48
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_kernel_buffer:Landroid/support/v8/renderscript/Allocation;

    .line 49
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_g_result_buffer(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x6

    .line 140
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_result_buffer:Landroid/support/v8/renderscript/Allocation;

    .line 141
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public forEach_ComputeIntegralImage(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_ComputeIntegralImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 225
    return-void
.end method

.method public forEach_ComputeIntegralImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 233
    return-void
.end method

.method public forEach_Dilate(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_Dilate(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 208
    return-void
.end method

.method public forEach_Dilate(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 216
    return-void
.end method

.method public forEach_DumpDepth(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_DumpDepth(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 319
    return-void
.end method

.method public forEach_DumpDepth(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v4, 0x0

    .line 323
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    const/16 v1, 0xb

    move-object v2, v4

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 327
    return-void
.end method

.method public forEach_DumpImage(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_DumpImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 302
    return-void
.end method

.method public forEach_DumpImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v4, 0x0

    .line 306
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    const/16 v1, 0xa

    move-object v2, v4

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 310
    return-void
.end method

.method public forEach_DumpIntegral(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_DumpIntegral(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 336
    return-void
.end method

.method public forEach_DumpIntegral(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v4, 0x0

    .line 340
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    const/16 v1, 0xc

    move-object v2, v4

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 344
    return-void
.end method

.method public forEach_Filter(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_Filter(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 251
    return-void
.end method

.method public forEach_Filter(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    const/4 v1, 0x7

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 259
    return-void
.end method

.method public forEach_FilterWithBlending(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_FilterWithBlending(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 268
    return-void
.end method

.method public forEach_FilterWithBlending(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    const/16 v1, 0x8

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 276
    return-void
.end method

.method public forEach_Makeborder(Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 241
    const/4 v1, 0x6

    move-object v2, v3

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 242
    return-void
.end method

.method public forEach_MarkDilate(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_MarkDilate(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 191
    return-void
.end method

.method public forEach_MarkDilate(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 199
    return-void
.end method

.method public forEach_PackResultImage(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_PackResultImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 285
    return-void
.end method

.method public forEach_PackResultImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const/16 v1, 0x9

    move-object v2, v4

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 293
    return-void
.end method

.method public forEach_UnpackDepth(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_UnpackDepth(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 174
    return-void
.end method

.method public forEach_UnpackDepth(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 182
    return-void
.end method

.method public forEach_UnpackInputImage(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_UnpackInputImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 157
    return-void
.end method

.method public forEach_UnpackInputImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 165
    return-void
.end method

.method public getFieldID_lut_apply_crf()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_lut_remove_crf()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getInvokeID_SetImageSize()Landroid/support/v8/renderscript/Script$InvokeID;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createInvokeID(I)Landroid/support/v8/renderscript/Script$InvokeID;

    move-result-object v0

    return-object v0
.end method

.method public getInvokeID_updateMaxKernelRadius()Landroid/support/v8/renderscript/Script$InvokeID;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createInvokeID(I)Landroid/support/v8/renderscript/Script$InvokeID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_ComputeIntegralImage()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x5

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_Dilate()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    const/4 v0, 0x4

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_DumpDepth()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    const/16 v0, 0xb

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_DumpImage()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    const/16 v0, 0xa

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_DumpIntegral()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    const/16 v0, 0xc

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_Filter()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    const/4 v0, 0x7

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_FilterWithBlending()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    const/16 v0, 0x8

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_Makeborder()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    const/4 v0, 0x6

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_MarkDilate()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    const/4 v0, 0x3

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_PackResultImage()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    const/16 v0, 0x9

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_UnpackDepth()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    const/4 v0, 0x2

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_UnpackInputImage()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v0, 0x1

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_g_depth_buffer()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_depth_buffer:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_image_buffer()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_image_buffer:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_integral_buffer()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_integral_buffer:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_kernel_buffer()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_kernel_buffer:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_result_buffer()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_g_result_buffer:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public get_lut_apply_crf()[F
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_lut_apply_crf:[F

    return-object v0
.end method

.method public get_lut_remove_crf()[F
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_lut_remove_crf:[F

    return-object v0
.end method

.method public invoke_SetImageSize(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "m"    # I

    .prologue
    .line 352
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 353
    .local v0, "SetImageSize_fp":Landroid/support/v8/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 354
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 355
    invoke-virtual {v0, p3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 356
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->invoke(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 357
    return-void
.end method

.method public invoke_updateMaxKernelRadius(I)V
    .locals 2
    .param p1, "r"    # I

    .prologue
    .line 365
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 366
    .local v0, "updateMaxKernelRadius_fp":Landroid/support/v8/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 367
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->invoke(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 368
    return-void
.end method

.method public declared-synchronized set_lut_apply_crf([F)V
    .locals 5
    .param p1, "v"    # [F

    .prologue
    const/16 v4, 0x101

    .line 60
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_lut_apply_crf:[F

    .line 61
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x404

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 62
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 63
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 67
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x101

    aput v4, v0, v3

    .line 68
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__F32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_lut_remove_crf([F)V
    .locals 5
    .param p1, "v"    # [F

    .prologue
    const/16 v4, 0x101

    .line 82
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->mExportVar_lut_remove_crf:[F

    .line 83
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x404

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 84
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 85
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 89
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x101

    aput v4, v0, v3

    .line 90
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->__F32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
