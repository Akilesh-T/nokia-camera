.class public Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlur.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mInput:Landroid/support/v8/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method protected constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->mValues:[F

    .line 37
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 52
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    new-instance v4, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v5, "Unsupported element type."

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    const/4 v2, 0x1

    .line 59
    .local v2, "mUseIncSupp":Z
    :goto_0
    const/4 v4, 0x5

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {p0, v4, v6, v7, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v0

    .line 61
    .local v0, "id":J
    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    invoke-direct {v3, v0, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 62
    .local v3, "si":Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v3, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setIncSupp(Z)V

    .line 63
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v3, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 65
    return-object v3

    .line 56
    .end local v0    # "id":J
    .end local v2    # "mUseIncSupp":Z
    .end local v3    # "si":Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Output is a 1D Allocation"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 108
    return-void
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Input set to a 1D Allocation"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->mInput:Landroid/support/v8/renderscript/Allocation;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 80
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 90
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 91
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Radius out of range (0 < r <= 25)."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setVar(IF)V

    .line 94
    return-void
.end method
