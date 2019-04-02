.class public Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_AdaBlur.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "adablur"

.field private static final mExportForEachIdx_Dilate:I = 0x4

.field private static final mExportForEachIdx_Filter:I = 0x6

.field private static final mExportForEachIdx_Makeborder:I = 0x5

.field private static final mExportForEachIdx_MarkDilate:I = 0x3

.field private static final mExportForEachIdx_PackResultImage:I = 0x7

.field private static final mExportForEachIdx_UnpackDepth:I = 0x2

.field private static final mExportForEachIdx_UnpackInputImage:I = 0x1

.field private static final mExportFuncIdx_SetImageSize:I = 0x0

.field private static final mExportVarIdx_background:I = 0x0

.field private static final mExportVarIdx_g_depth_buffer:I = 0x2

.field private static final mExportVarIdx_g_image_buffer:I = 0x1

.field private static final mExportVarIdx_g_result_buffer:I = 0x3


# instance fields
.field private __ALLOCATION:Landroid/support/v8/renderscript/Element;

.field private __U8_4:Landroid/support/v8/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/support/v8/renderscript/FieldPacker;

.field private mExportVar_background:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_g_depth_buffer:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_g_image_buffer:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_g_result_buffer:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 34
    const-string v0, "adablur"

    .line 36
    invoke-static {}, Lcom/fih_foxconn/imagelab/AdaBlurBitCode;->getBitCode32()[B

    move-result-object v1

    .line 37
    invoke-static {}, Lcom/fih_foxconn/imagelab/AdaBlurBitCode;->getBitCode64()[B

    move-result-object v2

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 38
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->__ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 39
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    .line 40
    return-void
.end method


# virtual methods
.method public bind_g_depth_buffer(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x2

    .line 75
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->mExportVar_g_depth_buffer:Landroid/support/v8/renderscript/Allocation;

    .line 76
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_g_image_buffer(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x1

    .line 63
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->mExportVar_g_image_buffer:Landroid/support/v8/renderscript/Allocation;

    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_g_result_buffer(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x3

    .line 87
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->mExportVar_g_result_buffer:Landroid/support/v8/renderscript/Allocation;

    .line 88
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public forEach_Dilate(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_Dilate(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 155
    return-void
.end method

.method public forEach_Dilate(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 163
    return-void
.end method

.method public forEach_Filter(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_Filter(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 181
    return-void
.end method

.method public forEach_Filter(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 189
    return-void
.end method

.method public forEach_Makeborder(Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 171
    const/4 v1, 0x5

    move-object v2, v3

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 172
    return-void
.end method

.method public forEach_MarkDilate(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_MarkDilate(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 138
    return-void
.end method

.method public forEach_MarkDilate(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 146
    return-void
.end method

.method public forEach_PackResultImage(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_PackResultImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 198
    return-void
.end method

.method public forEach_PackResultImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    const/4 v1, 0x7

    move-object v2, v4

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 206
    return-void
.end method

.method public forEach_UnpackDepth(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_UnpackDepth(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 121
    return-void
.end method

.method public forEach_UnpackDepth(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 129
    return-void
.end method

.method public forEach_UnpackInputImage(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_UnpackInputImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 104
    return-void
.end method

.method public forEach_UnpackInputImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 112
    return-void
.end method

.method public getFieldID_background()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getInvokeID_SetImageSize()Landroid/support/v8/renderscript/Script$InvokeID;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createInvokeID(I)Landroid/support/v8/renderscript/Script$InvokeID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_Dilate()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    const/4 v0, 0x4

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_Filter()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    const/4 v0, 0x6

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_Makeborder()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x5

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_MarkDilate()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    const/4 v0, 0x3

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_PackResultImage()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const/4 v0, 0x7

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_UnpackDepth()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x2

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_UnpackInputImage()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    const/4 v0, 0x1

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_background()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->mExportVar_background:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_depth_buffer()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->mExportVar_g_depth_buffer:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_image_buffer()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->mExportVar_g_image_buffer:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public get_g_result_buffer()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->mExportVar_g_result_buffer:Landroid/support/v8/renderscript/Allocation;

    return-object v0
.end method

.method public invoke_SetImageSize(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "m"    # I

    .prologue
    .line 214
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 215
    .local v0, "SetImageSize_fp":Landroid/support/v8/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 217
    invoke-virtual {v0, p3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->invoke(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 219
    return-void
.end method

.method public declared-synchronized set_background(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 48
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 49
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->mExportVar_background:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
