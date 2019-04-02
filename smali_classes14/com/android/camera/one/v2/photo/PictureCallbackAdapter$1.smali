.class Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;
.super Ljava/lang/Object;
.source "PictureCallbackAdapter.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->provideQuickExposeUpdatable()Lcom/android/camera/async/Updatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;->this$0:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;->update(Ljava/lang/Void;)V

    return-void
.end method

.method public update(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;->this$0:Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->access$100(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1$1;-><init>(Lcom/android/camera/one/v2/photo/PictureCallbackAdapter$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method
