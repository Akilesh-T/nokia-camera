.class public final enum Lorg/junit/runners/MethodSorters;
.super Ljava/lang/Enum;
.source "MethodSorters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/junit/runners/MethodSorters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/junit/runners/MethodSorters;

.field public static final enum DEFAULT:Lorg/junit/runners/MethodSorters;

.field public static final enum JVM:Lorg/junit/runners/MethodSorters;

.field public static final enum NAME_ASCENDING:Lorg/junit/runners/MethodSorters;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lorg/junit/runners/MethodSorters;

    const-string v1, "NAME_ASCENDING"

    sget-object v2, Lorg/junit/internal/MethodSorter;->NAME_ASCENDING:Ljava/util/Comparator;

    invoke-direct {v0, v1, v3, v2}, Lorg/junit/runners/MethodSorters;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lorg/junit/runners/MethodSorters;->NAME_ASCENDING:Lorg/junit/runners/MethodSorters;

    .line 25
    new-instance v0, Lorg/junit/runners/MethodSorters;

    const-string v1, "JVM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lorg/junit/runners/MethodSorters;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lorg/junit/runners/MethodSorters;->JVM:Lorg/junit/runners/MethodSorters;

    .line 30
    new-instance v0, Lorg/junit/runners/MethodSorters;

    const-string v1, "DEFAULT"

    sget-object v2, Lorg/junit/internal/MethodSorter;->DEFAULT:Ljava/util/Comparator;

    invoke-direct {v0, v1, v5, v2}, Lorg/junit/runners/MethodSorters;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lorg/junit/runners/MethodSorters;->DEFAULT:Lorg/junit/runners/MethodSorters;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/junit/runners/MethodSorters;

    sget-object v1, Lorg/junit/runners/MethodSorters;->NAME_ASCENDING:Lorg/junit/runners/MethodSorters;

    aput-object v1, v0, v3

    sget-object v1, Lorg/junit/runners/MethodSorters;->JVM:Lorg/junit/runners/MethodSorters;

    aput-object v1, v0, v4

    sget-object v1, Lorg/junit/runners/MethodSorters;->DEFAULT:Lorg/junit/runners/MethodSorters;

    aput-object v1, v0, v5

    sput-object v0, Lorg/junit/runners/MethodSorters;->$VALUES:[Lorg/junit/runners/MethodSorters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lorg/junit/runners/MethodSorters;->comparator:Ljava/util/Comparator;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/junit/runners/MethodSorters;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lorg/junit/runners/MethodSorters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/MethodSorters;

    return-object v0
.end method

.method public static final values()[Lorg/junit/runners/MethodSorters;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/junit/runners/MethodSorters;->$VALUES:[Lorg/junit/runners/MethodSorters;

    invoke-virtual {v0}, [Lorg/junit/runners/MethodSorters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/junit/runners/MethodSorters;

    return-object v0
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/junit/runners/MethodSorters;->comparator:Ljava/util/Comparator;

    return-object v0
.end method
