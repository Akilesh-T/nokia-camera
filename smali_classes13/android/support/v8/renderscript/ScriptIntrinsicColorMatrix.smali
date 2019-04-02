.class public Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicColorMatrix.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private final mAdd:Landroid/support/v8/renderscript/Float4;

.field private mInput:Landroid/support/v8/renderscript/Allocation;

.field private final mMatrix:Landroid/support/v8/renderscript/Matrix4f;


# direct methods
.method protected constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 31
    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    .line 32
    new-instance v0, Landroid/support/v8/renderscript/Float4;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float4;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    .line 39
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 53
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    new-instance v4, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v5, "Unsupported element type."

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    const/4 v2, 0x1

    .line 60
    .local v2, "mUseIncSupp":Z
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {p0, v4, v6, v7, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v0

    .line 62
    .local v0, "id":J
    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;

    invoke-direct {v3, v0, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 63
    .local v3, "si":Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
    invoke-virtual {v3, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setIncSupp(Z)V

    .line 64
    return-object v3

    .line 57
    .end local v0    # "id":J
    .end local v2    # "mUseIncSupp":Z
    .end local v3    # "si":Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 70
    .local v0, "fp":Landroid/support/v8/renderscript/FieldPacker;
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 72
    return-void
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 206
    return-void
.end method

.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "opt"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported element type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported element type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 250
    return-void
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAdd(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 126
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iput p1, v1, Landroid/support/v8/renderscript/Float4;->x:F

    .line 127
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iput p2, v1, Landroid/support/v8/renderscript/Float4;->y:F

    .line 128
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iput p3, v1, Landroid/support/v8/renderscript/Float4;->z:F

    .line 129
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iput p4, v1, Landroid/support/v8/renderscript/Float4;->w:F

    .line 131
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 132
    .local v0, "fp":Landroid/support/v8/renderscript/FieldPacker;
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iget v1, v1, Landroid/support/v8/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 133
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iget v1, v1, Landroid/support/v8/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 134
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iget v1, v1, Landroid/support/v8/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 135
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iget v1, v1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 136
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 137
    return-void
.end method

.method public setAdd(Landroid/support/v8/renderscript/Float4;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v8/renderscript/Float4;

    .prologue
    .line 103
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iget v2, p1, Landroid/support/v8/renderscript/Float4;->x:F

    iput v2, v1, Landroid/support/v8/renderscript/Float4;->x:F

    .line 104
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iget v2, p1, Landroid/support/v8/renderscript/Float4;->y:F

    iput v2, v1, Landroid/support/v8/renderscript/Float4;->y:F

    .line 105
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iget v2, p1, Landroid/support/v8/renderscript/Float4;->z:F

    iput v2, v1, Landroid/support/v8/renderscript/Float4;->z:F

    .line 106
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    iget v2, p1, Landroid/support/v8/renderscript/Float4;->w:F

    iput v2, v1, Landroid/support/v8/renderscript/Float4;->w:F

    .line 108
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 109
    .local v0, "fp":Landroid/support/v8/renderscript/FieldPacker;
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 110
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 111
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 112
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->w:F

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 114
    return-void
.end method

.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 1
    .param p1, "m"    # Landroid/support/v8/renderscript/Matrix3f;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix3f;)V

    .line 93
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 94
    return-void
.end method

.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "m"    # Landroid/support/v8/renderscript/Matrix4f;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix4f;)V

    .line 82
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 83
    return-void
.end method

.method public setGreyscale()V
    .locals 7

    .prologue
    const v6, 0x3e991687    # 0.299f

    const v5, 0x3de978d5    # 0.114f

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    .line 146
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v2, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 147
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 148
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v4, v2, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 149
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v3, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 150
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 151
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v4, v3, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 152
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v4, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 153
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 154
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v4, v4, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 155
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 156
    return-void
.end method

.method public setRGBtoYUV()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    .line 184
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3e991687    # 0.299f

    invoke-virtual {v0, v2, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 185
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 186
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3de978d5    # 0.114f

    invoke-virtual {v0, v4, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 187
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, -0x41e956c1    # -0.14713f

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 188
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, -0x416c1a8b    # -0.28886f

    invoke-virtual {v0, v3, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 189
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3edf3b64    # 0.436f

    invoke-virtual {v0, v4, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 190
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3f1d70a4    # 0.615f

    invoke-virtual {v0, v2, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 191
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, -0x40fc299e

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 192
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, -0x42332df5    # -0.10001f

    invoke-virtual {v0, v4, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 193
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 194
    return-void
.end method

.method public setYUVtoRGB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    .line 165
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v2, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 166
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v3, v2, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 167
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x3f91e5f3    # 1.13983f

    invoke-virtual {v0, v4, v2, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 168
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v3, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 169
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, -0x4135f06f

    invoke-virtual {v0, v3, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 170
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, -0x40eb5dcc    # -0.5806f

    invoke-virtual {v0, v4, v3, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 171
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v2, v4, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 172
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    const v1, 0x40020e17

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 173
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    invoke-virtual {v0, v4, v4, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    .line 174
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 175
    return-void
.end method
