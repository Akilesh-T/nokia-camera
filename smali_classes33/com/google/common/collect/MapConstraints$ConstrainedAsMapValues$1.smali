.class Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;
.super Ljava/lang/Object;
.source "MapConstraints.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 561
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues.1;"
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 564
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues.1;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->next()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues.1;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 574
    .local p0, "this":Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;, "Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues.1;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 575
    return-void
.end method
