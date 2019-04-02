.class Lorg/junit/runner/manipulation/Filter$2;
.super Lorg/junit/runner/manipulation/Filter;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runner/manipulation/Filter;->matchMethodDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$desiredDescription:Lorg/junit/runner/Description;


# direct methods
.method constructor <init>(Lorg/junit/runner/Description;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    const-string v0, "Method %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    invoke-virtual {v3}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .locals 3
    .param p1, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 51
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    invoke-virtual {v2, p1}, Lorg/junit/runner/Description;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 61
    :goto_0
    return v2

    .line 56
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 57
    .local v0, "each":Lorg/junit/runner/Description;
    invoke-virtual {p0, v0}, Lorg/junit/runner/manipulation/Filter$2;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "each":Lorg/junit/runner/Description;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
