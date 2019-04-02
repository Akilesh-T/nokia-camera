.class Lcom/android/camera/CameraActivity$11$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$11;->onSessionFailed(Landroid/net/Uri;IZZ)V
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
.field final synthetic this$1:Lcom/android/camera/CameraActivity$11;

.field final synthetic val$needRecoverThumbnail:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$11;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$11;

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/android/camera/CameraActivity$11$1;->this$1:Lcom/android/camera/CameraActivity$11;

    iput-boolean p2, p0, Lcom/android/camera/CameraActivity$11$1;->val$needRecoverThumbnail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1586
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$11$1;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1589
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity$11$1;->val$needRecoverThumbnail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity$11$1;->this$1:Lcom/android/camera/CameraActivity$11;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$11;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showThumbnailIfAvailable()V

    .line 1590
    :cond_0
    return-void
.end method
