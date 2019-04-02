.class final Lcom/android/camera/async/ObservableCombiner$1;
.super Ljava/lang/Object;
.source "ObservableCombiner.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/ObservableCombiner;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/android/camera/async/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<TO;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/google/common/base/Function;

.field final synthetic val$inputs:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/base/Function;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/async/ObservableCombiner$1;->val$inputs:Ljava/util/List;

    iput-object p2, p0, Lcom/android/camera/async/ObservableCombiner$1;->val$function:Lcom/google/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "deps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TI;>;"
    iget-object v2, p0, Lcom/android/camera/async/ObservableCombiner$1;->val$inputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/Observable;

    .line 69
    .local v0, "dependency":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<+TI;>;"
    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "dependency":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<+TI;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/camera/async/ObservableCombiner$1;->val$function:Lcom/google/common/base/Function;

    invoke-interface {v2, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
