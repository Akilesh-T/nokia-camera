.class public abstract Lorg/junit/runners/ParentRunner;
.super Lorg/junit/runner/Runner;
.source "ParentRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/junit/runner/Runner;",
        "Lorg/junit/runner/manipulation/Filterable;",
        "Lorg/junit/runner/manipulation/Sortable;"
    }
.end annotation


# static fields
.field private static final VALIDATORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/validator/TestClassValidator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final childrenLock:Ljava/lang/Object;

.field private volatile filteredChildren:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile scheduler:Lorg/junit/runners/model/RunnerScheduler;

.field private final testClass:Lorg/junit/runners/model/TestClass;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/junit/validator/TestClassValidator;

    const/4 v1, 0x0

    new-instance v2, Lorg/junit/validator/AnnotationsValidator;

    invoke-direct {v2}, Lorg/junit/validator/AnnotationsValidator;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/junit/validator/PublicClassValidator;

    invoke-direct {v2}, Lorg/junit/validator/PublicClassValidator;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/junit/runners/ParentRunner;->VALIDATORS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    .line 69
    new-instance v0, Lorg/junit/runners/ParentRunner$1;

    invoke-direct {v0, p0}, Lorg/junit/runners/ParentRunner$1;-><init>(Lorg/junit/runners/ParentRunner;)V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 83
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->createTestClass(Ljava/lang/Class;)Lorg/junit/runners/model/TestClass;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    .line 84
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->validate()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 0
    .param p0, "x0"    # Lorg/junit/runners/ParentRunner;
    .param p1, "x1"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->runChildren(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method private applyValidators(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v2

    invoke-virtual {v2}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Lorg/junit/runners/ParentRunner;->VALIDATORS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/validator/TestClassValidator;

    .line 134
    .local v0, "each":Lorg/junit/validator/TestClassValidator;
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/junit/validator/TestClassValidator;->validateTestClass(Lorg/junit/runners/model/TestClass;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 137
    .end local v0    # "each":Lorg/junit/validator/TestClassValidator;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private areAllChildrenIgnored()Z
    .locals 3

    .prologue
    .line 200
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "child":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->isIgnored(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    const/4 v2, 0x0

    .line 205
    .end local v0    # "child":Ljava/lang/Object;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private comparator(Lorg/junit/runner/manipulation/Sorter;)Ljava/util/Comparator;
    .locals 1
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/manipulation/Sorter;",
            ")",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/runners/ParentRunner$4;

    invoke-direct {v0, p0, p1}, Lorg/junit/runners/ParentRunner$4;-><init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/manipulation/Sorter;)V

    return-object v0
.end method

.method private getFilteredChildren()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 424
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    .line 428
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_1
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    return-object v0

    .line 428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private runChildren(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 285
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 287
    .local v0, "currentScheduler":Lorg/junit/runners/model/RunnerScheduler;
    :try_start_0
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "each":Ljava/lang/Object;, "TT;"
    new-instance v3, Lorg/junit/runners/ParentRunner$3;

    invoke-direct {v3, p0, v1, p1}, Lorg/junit/runners/ParentRunner$3;-><init>(Lorg/junit/runners/ParentRunner;Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V

    invoke-interface {v0, v3}, Lorg/junit/runners/model/RunnerScheduler;->schedule(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    .end local v1    # "each":Ljava/lang/Object;, "TT;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Lorg/junit/runners/model/RunnerScheduler;->finished()V

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Lorg/junit/runners/model/RunnerScheduler;->finished()V

    .line 297
    return-void
.end method

.method private shouldRun(Lorg/junit/runner/manipulation/Filter;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/manipulation/Filter;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p2, "each":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v0

    return v0
.end method

.method private validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->collectInitializationErrors(Ljava/util/List;)V

    .line 417
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    new-instance v1, Lorg/junit/runners/model/InitializationError;

    invoke-direct {v1, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/util/List;)V

    throw v1

    .line 420
    :cond_0
    return-void
.end method

.method private validateClassRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 161
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 162
    return-void
.end method

.method private withClassRules(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .prologue
    .line 244
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->classRules()Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "classRules":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-object p1

    .restart local p1    # "statement":Lorg/junit/runners/model/Statement;
    :cond_0
    new-instance v1, Lorg/junit/rules/RunRules;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/rules/RunRules;-><init>(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V

    move-object p1, v1

    goto :goto_0
.end method


# virtual methods
.method protected childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 265
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/runners/ParentRunner$2;

    invoke-direct {v0, p0, p1}, Lorg/junit/runners/ParentRunner$2;-><init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/notification/RunNotifier;)V

    return-object v0
.end method

.method protected classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .locals 2
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 190
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 191
    .local v0, "statement":Lorg/junit/runners/model/Statement;
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->areAllChildrenIgnored()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->withBeforeClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->withAfterClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 194
    invoke-direct {p0, v0}, Lorg/junit/runners/ParentRunner;->withClassRules(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 196
    :cond_0
    return-object v0
.end method

.method protected classRules()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    const/4 v4, 0x0

    .line 254
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/ClassRule;

    const-class v3, Lorg/junit/rules/TestRule;

    invoke-virtual {v1, v4, v2, v3}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/ClassRule;

    const-class v3, Lorg/junit/rules/TestRule;

    invoke-virtual {v1, v4, v2, v3}, Lorg/junit/runners/model/TestClass;->getAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    return-object v0
.end method

.method protected collectInitializationErrors(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v1, 0x1

    .line 125
    const-class v0, Lorg/junit/BeforeClass;

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/ParentRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 126
    const-class v0, Lorg/junit/AfterClass;

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/ParentRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 127
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->validateClassRules(Ljava/util/List;)V

    .line 128
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->applyValidators(Ljava/util/List;)V

    .line 129
    return-void
.end method

.method protected createTestClass(Ljava/lang/Class;)Lorg/junit/runners/model/TestClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/junit/runners/model/TestClass;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/runners/model/TestClass;

    invoke-direct {v0, p1}, Lorg/junit/runners/model/TestClass;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected abstract describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/junit/runner/Description;"
        }
    .end annotation
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 6
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v5, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/lang/Object;

    monitor-enter v5

    .line 379
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 382
    .local v2, "each":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, v2}, Lorg/junit/runners/ParentRunner;->shouldRun(Lorg/junit/runner/manipulation/Filter;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 396
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    .end local v2    # "each":Ljava/lang/Object;, "TT;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 389
    .restart local v0    # "children":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v2    # "each":Ljava/lang/Object;, "TT;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 392
    .end local v2    # "each":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    .line 393
    iget-object v4, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    new-instance v4, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {v4}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw v4

    .line 396
    :cond_2
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    return-void
.end method

.method protected abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 5

    .prologue
    .line 349
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getRunnerAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    .line 351
    .local v1, "description":Lorg/junit/runner/Description;
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 352
    .local v0, "child":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 354
    .end local v0    # "child":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRunnerAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 340
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getTestClass()Lorg/junit/runners/model/TestClass;
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    return-object v0
.end method

.method protected isIgnored(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "child":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 359
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v2, Lorg/junit/internal/runners/model/EachTestNotifier;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/junit/internal/runners/model/EachTestNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 362
    .local v2, "testNotifier":Lorg/junit/internal/runners/model/EachTestNotifier;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 363
    .local v1, "statement":Lorg/junit/runners/model/Statement;
    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/junit/runner/notification/StoppedByUserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 371
    .end local v1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    invoke-virtual {v2, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V

    goto :goto_0

    .line 366
    .end local v0    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catch_1
    move-exception v0

    .line 367
    .local v0, "e":Lorg/junit/runner/notification/StoppedByUserException;
    throw v0

    .line 368
    .end local v0    # "e":Lorg/junit/runner/notification/StoppedByUserException;
    :catch_2
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v2, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract runChild(Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/junit/runner/notification/RunNotifier;",
            ")V"
        }
    .end annotation
.end method

.method protected final runLeaf(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .param p3, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 322
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v1, Lorg/junit/internal/runners/model/EachTestNotifier;

    invoke-direct {v1, p3, p2}, Lorg/junit/internal/runners/model/EachTestNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 323
    .local v1, "eachNotifier":Lorg/junit/internal/runners/model/EachTestNotifier;
    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestStarted()V

    .line 325
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    .line 333
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    goto :goto_0

    .line 328
    .end local v0    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    throw v2
.end method

.method public setScheduler(Lorg/junit/runners/model/RunnerScheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lorg/junit/runners/model/RunnerScheduler;

    .prologue
    .line 450
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iput-object p1, p0, Lorg/junit/runners/ParentRunner;->scheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 451
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .locals 5
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;

    .prologue
    .line 400
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v4, p0, Lorg/junit/runners/ParentRunner;->childrenLock:Ljava/lang/Object;

    monitor-enter v4

    .line 401
    :try_start_0
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 402
    .local v0, "each":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    .end local v0    # "each":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 404
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 405
    .local v2, "sortedChildren":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->comparator(Lorg/junit/runner/manipulation/Sorter;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 406
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lorg/junit/runners/ParentRunner;->filteredChildren:Ljava/util/Collection;

    .line 407
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    return-void
.end method

.method protected validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V
    .locals 4
    .param p2, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    .line 155
    .local v0, "eachTestMethod":Lorg/junit/runners/model/FrameworkMethod;
    invoke-virtual {v0, p2, p3}, Lorg/junit/runners/model/FrameworkMethod;->validatePublicVoidNoArg(ZLjava/util/List;)V

    goto :goto_0

    .line 157
    .end local v0    # "eachTestMethod":Lorg/junit/runners/model/FrameworkMethod;
    :cond_0
    return-void
.end method

.method protected withAfterClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .prologue
    .line 228
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/AfterClass;

    invoke-virtual {v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-object p1

    .restart local p1    # "statement":Lorg/junit/runners/model/Statement;
    :cond_0
    new-instance v1, Lorg/junit/internal/runners/statements/RunAfters;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/internal/runners/statements/RunAfters;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0
.end method

.method protected withBeforeClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .prologue
    .line 214
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->testClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/BeforeClass;

    invoke-virtual {v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-object p1

    .restart local p1    # "statement":Lorg/junit/runners/model/Statement;
    :cond_0
    new-instance v1, Lorg/junit/internal/runners/statements/RunBefores;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/internal/runners/statements/RunBefores;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0
.end method
