.class Lcom/android/camera/app/CameraAppUI$5;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$5;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$5;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$1700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/ModeTransitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeTransitionView;->hideImageCover()V

    .line 1273
    return-void
.end method
