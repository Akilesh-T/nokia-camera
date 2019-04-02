.class public Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve3x3.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mInput:Landroid/support/v8/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    .line 33
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    const/4 v5, 0x1

    .line 54
    const/16 v6, 0x9

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 55
    .local v0, "f":[F
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 56
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 57
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 60
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 63
    new-instance v5, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v6, "Unsupported element type."

    invoke-direct {v5, v6}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v6

    if-eqz v6, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_1

    move v1, v5

    .line 69
    .local v1, "mUseIncSupp":Z
    :goto_0
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7, v1}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v2

    .line 71
    .local v2, "id":J
    new-instance v4, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-direct {v4, v2, v3, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 72
    .local v4, "si":Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;
    invoke-virtual {v4, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->setIncSupp(Z)V

    .line 73
    invoke-virtual {v4, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    .line 74
    return-object v4

    .line 66
    .end local v1    # "mUseIncSupp":Z
    .end local v2    # "id":J
    .end local v4    # "si":Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 118
    return-void
.end method

.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "opt"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v4, 0x0

    .line 129
    const/4 v1, 0x0

    move-object v2, v4

    check-cast v2, Landroid/support/v8/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 130
    return-void
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setCoefficients([F)V
    .locals 4
    .param p1, "v"    # [F

    .prologue
    .line 101
    new-instance v1, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 102
    .local v1, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 103
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    aget v3, p1, v0

    aput v3, v2, v0

    .line 104
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 107
    return-void
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroid/support/v8/renderscript/Allocation;

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 86
    return-void
.end method
