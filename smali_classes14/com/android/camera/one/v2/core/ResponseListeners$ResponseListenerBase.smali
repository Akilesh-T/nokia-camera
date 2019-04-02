.class abstract Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "ResponseListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/ResponseListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ResponseListenerBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/one/v2/core/ResponseListener;"
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/async/Updatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;, "Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase<TT;>;"
    .local p1, "delegate":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<TT;>;"
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;->mDelegate:Lcom/android/camera/async/Updatable;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/core/ResponseListeners$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/async/Updatable;
    .param p2, "x1"    # Lcom/android/camera/one/v2/core/ResponseListeners$1;

    .prologue
    .line 42
    .local p0, "this":Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;, "Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;-><init>(Lcom/android/camera/async/Updatable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 56
    .local p0, "this":Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;, "Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase<TT;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;->mDelegate:Lcom/android/camera/async/Updatable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;, "Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase<TT;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;->mDelegate:Lcom/android/camera/async/Updatable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
