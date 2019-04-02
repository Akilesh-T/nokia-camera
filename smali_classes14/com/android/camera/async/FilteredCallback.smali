.class public final Lcom/android/camera/async/FilteredCallback;
.super Ljava/lang/Object;
.source "FilteredCallback.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/Callback",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/util/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mLastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/android/camera/async/FilteredCallback;, "Lcom/android/camera/async/FilteredCallback<TT;>;"
    .local p1, "callback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/async/FilteredCallback;->mCallback:Lcom/android/camera/util/Callback;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/FilteredCallback;->mLastValue:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/android/camera/async/FilteredCallback;, "Lcom/android/camera/async/FilteredCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/camera/async/FilteredCallback;->mLastValue:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/android/camera/async/FilteredCallback;->mLastValue:Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/android/camera/async/FilteredCallback;->mCallback:Lcom/android/camera/util/Callback;

    invoke-interface {v0, p1}, Lcom/android/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
