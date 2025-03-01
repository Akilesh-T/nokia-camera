.class public final Lcom/google/common/collect/Tables;
.super Ljava/lang/Object;
.source "Tables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;,
        Lcom/google/common/collect/Tables$UnmodifiableTable;,
        Lcom/google/common/collect/Tables$TransformedTable;,
        Lcom/google/common/collect/Tables$TransposeTable;,
        Lcom/google/common/collect/Tables$AbstractCell;,
        Lcom/google/common/collect/Tables$ImmutableCell;
    }
.end annotation


# static fields
.field private static final UNMODIFIABLE_WRAPPER:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<+",
            "Ljava/util/Map",
            "<**>;+",
            "Ljava/util/Map",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 604
    new-instance v0, Lcom/google/common/collect/Tables$1;

    invoke-direct {v0}, Lcom/google/common/collect/Tables$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Tables;->UNMODIFIABLE_WRAPPER:Lcom/google/common/base/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/Function;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/common/collect/Tables;->unmodifiableWrapper()Lcom/google/common/base/Function;

    move-result-object v0

    return-object v0
.end method

.method static equalsImpl(Lcom/google/common/collect/Table;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<***>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    if-ne p1, p0, :cond_0

    .line 614
    const/4 v1, 0x1

    .line 619
    :goto_0
    return v1

    .line 615
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/Table;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 616
    check-cast v0, Lcom/google/common/collect/Table;

    .line 617
    .local v0, "that":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    invoke-interface {p0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 619
    .end local v0    # "that":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "rowKey":Ljava/lang/Object;, "TR;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/collect/Tables$ImmutableCell;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Tables$ImmutableCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newCustomTable(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/Table;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;)",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    .local p1, "factory":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<+Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 301
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v0, Lcom/google/common/collect/StandardTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static transformValues(Lcom/google/common/collect/Table;Lcom/google/common/base/Function;)Lcom/google/common/collect/Table;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV2;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "fromTable":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV1;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TV1;TV2;>;"
    new-instance v0, Lcom/google/common/collect/Tables$TransformedTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Tables$TransformedTable;-><init>(Lcom/google/common/collect/Table;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static transpose(Lcom/google/common/collect/Table;)Lcom/google/common/collect/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;)",
            "Lcom/google/common/collect/Table",
            "<TC;TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    instance-of v0, p0, Lcom/google/common/collect/Tables$TransposeTable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/Tables$TransposeTable;

    .end local p0    # "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    .restart local p0    # "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Tables$TransposeTable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransposeTable;-><init>(Lcom/google/common/collect/Table;)V

    goto :goto_0
.end method

.method public static unmodifiableRowSortedTable(Lcom/google/common/collect/RowSortedTable;)Lcom/google/common/collect/RowSortedTable;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/RowSortedTable",
            "<TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/RowSortedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "table":Lcom/google/common/collect/RowSortedTable;, "Lcom/google/common/collect/RowSortedTable<TR;+TC;+TV;>;"
    new-instance v0, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;-><init>(Lcom/google/common/collect/RowSortedTable;)V

    return-object v0
.end method

.method public static unmodifiableTable(Lcom/google/common/collect/Table;)Lcom/google/common/collect/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    new-instance v0, Lcom/google/common/collect/Tables$UnmodifiableTable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$UnmodifiableTable;-><init>(Lcom/google/common/collect/Table;)V

    return-object v0
.end method

.method private static unmodifiableWrapper()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 601
    sget-object v0, Lcom/google/common/collect/Tables;->UNMODIFIABLE_WRAPPER:Lcom/google/common/base/Function;

    return-object v0
.end method
