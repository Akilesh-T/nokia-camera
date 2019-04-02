.class public Lorg/junit/experimental/categories/Categories;
.super Lorg/junit/runners/Suite;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/categories/Categories$CategoryFilter;,
        Lorg/junit/experimental/categories/Categories$ExcludeCategory;,
        Lorg/junit/experimental/categories/Categories$IncludeCategory;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V
    .locals 6
    .param p2, "builder"    # Lorg/junit/runners/model/RunnerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V

    .line 309
    :try_start_0
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->getIncludedCategory(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    .line 310
    .local v2, "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->getExcludedCategory(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 311
    .local v1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->isAnyIncluded(Ljava/lang/Class;)Z

    move-result v4

    .line 312
    .local v4, "isAnyIncluded":Z
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->isAnyExcluded(Ljava/lang/Class;)Z

    move-result v3

    .line 314
    .local v3, "isAnyExcluded":Z
    invoke-static {v4, v2, v3, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->categoryFilter(ZLjava/util/Set;ZLjava/util/Set;)Lorg/junit/experimental/categories/Categories$CategoryFilter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/junit/experimental/categories/Categories;->filter(Lorg/junit/runner/manipulation/Filter;)V
    :try_end_0
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    invoke-virtual {p0}, Lorg/junit/experimental/categories/Categories;->getDescription()Lorg/junit/runner/Description;

    move-result-object v5

    invoke-static {v5}, Lorg/junit/experimental/categories/Categories;->assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V

    .line 319
    return-void

    .line 315
    .end local v1    # "excluded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v2    # "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v3    # "isAnyExcluded":Z
    .end local v4    # "isAnyIncluded":Z
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    new-instance v5, Lorg/junit/runners/model/InitializationError;

    invoke-direct {v5, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method static synthetic access$000([Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Class;

    .prologue
    .line 81
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Set;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 81
    invoke-static {p0, p1}, Lorg/junit/experimental/categories/Categories;->hasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V
    .locals 3
    .param p0, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->canHaveCategorizedChildren(Lorg/junit/runner/Description;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    invoke-static {p0}, Lorg/junit/experimental/categories/Categories;->assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V

    .line 345
    :cond_0
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 346
    .local v0, "each":Lorg/junit/runner/Description;
    invoke-static {v0}, Lorg/junit/experimental/categories/Categories;->assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 348
    .end local v0    # "each":Lorg/junit/runner/Description;
    :cond_1
    return-void
.end method

.method private static assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V
    .locals 4
    .param p0, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 352
    .local v0, "each":Lorg/junit/runner/Description;
    const-class v2, Lorg/junit/experimental/categories/Category;

    invoke-virtual {v0, v2}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 353
    new-instance v2, Lorg/junit/runners/model/InitializationError;

    const-string v3, "Category annotations on Parameterized classes are not supported on individual methods."

    invoke-direct {v2, v3}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_0
    invoke-static {v0}, Lorg/junit/experimental/categories/Categories;->assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 357
    .end local v0    # "each":Lorg/junit/runner/Description;
    :cond_1
    return-void
.end method

.method private static canHaveCategorizedChildren(Lorg/junit/runner/Description;)Z
    .locals 3
    .param p0, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 361
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 362
    .local v0, "each":Lorg/junit/runner/Description;
    invoke-virtual {v0}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    .line 363
    const/4 v2, 0x0

    .line 366
    .end local v0    # "each":Lorg/junit/runner/Description;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static varargs createSet([Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "t":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 380
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz p0, :cond_0

    .line 381
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 383
    :cond_0
    return-object v0
.end method

.method private static getExcludedCategory(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    .line 333
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$ExcludeCategory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$ExcludeCategory;->value()[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static getIncludedCategory(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    .line 323
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$IncludeCategory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/junit/experimental/categories/Categories;->createSet([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$IncludeCategory;->value()[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static hasAssignableTo(Ljava/util/Set;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "assigns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 371
    .local v0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    const/4 v2, 0x1

    .line 375
    .end local v0    # "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isAnyExcluded(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    .line 338
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$ExcludeCategory;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$ExcludeCategory;->matchAny()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAnyIncluded(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    .line 328
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$IncludeCategory;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$IncludeCategory;->matchAny()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
