.class Lcom/android/camera/app/CameraAppUI$18;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->setSRBadgeVisible(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 2781
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$18;->this$0:Lcom/android/camera/app/CameraAppUI;

    iput p2, p0, Lcom/android/camera/app/CameraAppUI$18;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$18;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$2900(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/app/CameraAppUI$18;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2785
    return-void
.end method
