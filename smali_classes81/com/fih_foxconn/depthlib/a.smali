.class public final Lcom/fih_foxconn/depthlib/a;
.super Landroid/support/v8/renderscript/ScriptC;


# instance fields
.field private a:Landroid/support/v8/renderscript/Element;

.field private b:Landroid/support/v8/renderscript/Element;

.field private c:Landroid/support/v8/renderscript/Element;

.field private d:Landroid/support/v8/renderscript/Element;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/support/v8/renderscript/Allocation;

.field private i:Landroid/support/v8/renderscript/Allocation;

.field private j:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "copymask"

    invoke-static {}, Lcom/fih_foxconn/depthlib/c;->a()[B

    move-result-object v1

    invoke-static {}, Lcom/fih_foxconn/depthlib/c;->b()[B

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    iput v3, p0, Lcom/fih_foxconn/depthlib/a;->e:I

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/a;->c:Landroid/support/v8/renderscript/Element;

    iput v3, p0, Lcom/fih_foxconn/depthlib/a;->f:I

    iput v3, p0, Lcom/fih_foxconn/depthlib/a;->g:I

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/a;->a:Landroid/support/v8/renderscript/Element;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/a;->d:Landroid/support/v8/renderscript/Element;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/a;->b:Landroid/support/v8/renderscript/Element;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/fih_foxconn/depthlib/a;->setVar(II)V

    iput p1, p0, Lcom/fih_foxconn/depthlib/a;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/fih_foxconn/depthlib/a;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/a;->h:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/fih_foxconn/depthlib/a;->setVar(II)V

    iput p1, p0, Lcom/fih_foxconn/depthlib/a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/fih_foxconn/depthlib/a;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/a;->i:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/fih_foxconn/depthlib/a;->setVar(II)V

    iput p1, p0, Lcom/fih_foxconn/depthlib/a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/fih_foxconn/depthlib/a;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/a;->j:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Landroid/support/v8/renderscript/Allocation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/a;->d:Landroid/support/v8/renderscript/Element;

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

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/a;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    return-void
.end method
