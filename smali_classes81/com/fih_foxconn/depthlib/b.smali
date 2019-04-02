.class public final Lcom/fih_foxconn/depthlib/b;
.super Landroid/support/v8/renderscript/ScriptC;


# instance fields
.field public a:Landroid/support/v8/renderscript/Allocation;

.field public b:Landroid/support/v8/renderscript/Allocation;

.field public c:Landroid/support/v8/renderscript/Allocation;

.field public d:Landroid/support/v8/renderscript/Allocation;

.field public e:Landroid/support/v8/renderscript/Allocation;

.field public f:Landroid/support/v8/renderscript/Allocation;

.field private g:Landroid/support/v8/renderscript/Element;

.field private h:Landroid/support/v8/renderscript/Element;

.field private i:Landroid/support/v8/renderscript/Element;

.field private j:Landroid/support/v8/renderscript/FieldPacker;

.field private k:Landroid/support/v8/renderscript/Allocation;

.field private l:S


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 3

    const-string v0, "fast_bokeh"

    invoke-static {}, Lcom/fih_foxconn/depthlib/d;->a()[B

    move-result-object v1

    invoke-static {}, Lcom/fih_foxconn/depthlib/d;->b()[B

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/b;->g:Landroid/support/v8/renderscript/Element;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/b;->h:Landroid/support/v8/renderscript/Element;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/fih_foxconn/depthlib/b;->invoke(ILandroid/support/v8/renderscript/FieldPacker;)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/fih_foxconn/depthlib/b;->invoke(ILandroid/support/v8/renderscript/FieldPacker;)V

    return-void
.end method

.method public final a(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/b;->k:Landroid/support/v8/renderscript/Allocation;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x7

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final declared-synchronized a(S)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/b;->j:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/b;->j:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    :goto_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/b;->j:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addU8(S)V

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->j:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/fih_foxconn/depthlib/b;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    iput-short p1, p0, Lcom/fih_foxconn/depthlib/b;->l:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/b;->j:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final b(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x8

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final c(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final d(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final e(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final f(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x9

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final g(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0xb

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final h(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0xc

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public final i(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/b;->i:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0xd

    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/b;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method
