.class Lcom/android/camera/CameraActivity$24$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$24;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$24;

    .prologue
    .line 3309
    iput-object p1, p0, Lcom/android/camera/CameraActivity$24$2;->this$1:Lcom/android/camera/CameraActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 3309
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$24$2;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24$2;->this$1:Lcom/android/camera/CameraActivity$24;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showThumbnailIfAvailable()V

    .line 3313
    return-void
.end method
