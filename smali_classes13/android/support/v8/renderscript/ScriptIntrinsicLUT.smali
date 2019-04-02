.class public Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicLUT.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroid/support/v8/renderscript/Matrix4f;

.field private mTables:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method protected constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 28
    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    .line 30
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 37
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
    .locals 10
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_0

    const/4 v1, 0x1

    .line 54
    .local v1, "mUseIncSupp":Z
    :goto_0
    const/4 v6, 0x3

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9, v1}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v2

    .line 56
    .local v2, "id":J
    new-instance v4, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;

    invoke-direct {v4, v2, v3, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 57
    .local v4, "si":Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
    invoke-virtual {v4, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->setIncSupp(Z)V

    .line 58
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    const/16 v7, 0x400

    invoke-static {p0, v6, v7}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v6

    iput-object v6, v4, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    .line 59
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    const/16 v6, 0x100

    if-ge v0, v6, :cond_1

    .line 60
    iget-object v6, v4, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v7, v0

    aput-byte v7, v6, v0

    .line 61
    iget-object v6, v4, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v7, v0, 0x100

    int-to-byte v8, v0

    aput-byte v8, v6, v7

    .line 62
    iget-object v6, v4, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v7, v0, 0x200

    int-to-byte v8, v0

    aput-byte v8, v6, v7

    .line 63
    iget-object v6, v4, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v7, v0, 0x300

    int-to-byte v8, v0

    aput-byte v8, v6, v7

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "ct":I
    .end local v1    # "mUseIncSupp":Z
    .end local v2    # "id":J
    .end local v4    # "si":Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
    :cond_0
    move v1, v5

    .line 51
    goto :goto_0

    .line 65
    .restart local v0    # "ct":I
    .restart local v1    # "mUseIncSupp":Z
    .restart local v2    # "id":J
    .restart local v4    # "si":Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
    :cond_1
    iget-object v6, v4, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v4, v5, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 66
    return-object v4
.end method

.method private validate(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v0, 0xff

    .line 71
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Index out of range (0-255)."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 75
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Value out of range (0-255)."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3
    return-void
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    if-eqz v0, :cond_0

    .line 137
    iput-boolean v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 138
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked([B)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, p2, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 141
    return-void
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 123
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x300

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 125
    return-void
.end method

.method public setBlue(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 111
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x200

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 113
    return-void
.end method

.method public setGreen(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 99
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x100

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 101
    return-void
.end method

.method public setRed(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 87
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 89
    return-void
.end method
