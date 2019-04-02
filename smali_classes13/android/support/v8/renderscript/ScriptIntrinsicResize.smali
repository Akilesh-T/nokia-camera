.class public Landroid/support/v8/renderscript/ScriptIntrinsicResize;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicResize.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x15


# instance fields
.field private mInput:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method protected constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 31
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/ScriptIntrinsicResize;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    const/4 v2, 0x1

    .line 48
    .local v2, "mUseIncSupp":Z
    :goto_0
    const/16 v4, 0xc

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v6, v7, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v0

    .line 50
    .local v0, "id":J
    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicResize;

    invoke-direct {v3, v0, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 51
    .local v3, "si":Landroid/support/v8/renderscript/ScriptIntrinsicResize;
    invoke-virtual {v3, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->setIncSupp(Z)V

    .line 52
    return-object v3

    .line 45
    .end local v0    # "id":J
    .end local v2    # "mUseIncSupp":Z
    .end local v3    # "si":Landroid/support/v8/renderscript/ScriptIntrinsicResize;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public forEach_bicubic(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mInput:Landroid/support/v8/renderscript/Allocation;

    if-ne p1, v0, :cond_0

    .line 99
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Output cannot be same as Input."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 102
    return-void
.end method

.method public forEach_bicubic(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "opt"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v4, 0x0

    .line 114
    const/4 v1, 0x0

    move-object v2, v4

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 115
    return-void
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_bicubic()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 64
    .local v0, "e":Landroid/support/v8/renderscript/Element;
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 65
    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 66
    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 67
    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 68
    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 69
    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 70
    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 71
    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported element type."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->mInput:Landroid/support/v8/renderscript/Allocation;

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 77
    return-void
.end method
