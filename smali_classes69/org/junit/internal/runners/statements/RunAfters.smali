.class public Lorg/junit/internal/runners/statements/RunAfters;
.super Lorg/junit/runners/model/Statement;
.source "RunAfters.java"


# instance fields
.field private final afters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final next:Lorg/junit/runners/model/Statement;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p1, "next"    # Lorg/junit/runners/model/Statement;
    .param p3, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/junit/internal/runners/statements/RunAfters;->next:Lorg/junit/runners/model/Statement;

    .line 19
    iput-object p2, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    .line 20
    iput-object p3, p0, Lorg/junit/internal/runners/statements/RunAfters;->target:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_0
    iget-object v4, p0, Lorg/junit/internal/runners/statements/RunAfters;->next:Lorg/junit/runners/model/Statement;

    invoke-virtual {v4}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v4, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .local v1, "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_1
    iget-object v4, p0, Lorg/junit/internal/runners/statements/RunAfters;->target:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 29
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    iget-object v4, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .restart local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_3
    iget-object v4, p0, Lorg/junit/internal/runners/statements/RunAfters;->target:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 34
    :catch_2
    move-exception v0

    .line 35
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .restart local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_4
    iget-object v5, p0, Lorg/junit/internal/runners/statements/RunAfters;->target:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 34
    :catch_3
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 36
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :cond_0
    throw v4

    .line 39
    :cond_1
    invoke-static {v2}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    .line 40
    return-void
.end method
