.class Lcom/android/camera/CameraActivity$13;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->indicateCapture(Landroid/graphics/Bitmap;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$indicator:Landroid/graphics/Bitmap;

.field final synthetic val$needAnim:Z

.field final synthetic val$rotationDegrees:I


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;ZLandroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/android/camera/CameraActivity$13;->this$0:Lcom/android/camera/CameraActivity;

    iput-boolean p2, p0, Lcom/android/camera/CameraActivity$13;->val$needAnim:Z

    iput-object p3, p0, Lcom/android/camera/CameraActivity$13;->val$indicator:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/android/camera/CameraActivity$13;->val$rotationDegrees:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/camera/CameraActivity$13;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$13;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v1

    .line 2027
    invoke-virtual {v1}, Lcom/android/camera/CameraModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/CameraActivity$13;->val$needAnim:Z

    .line 2026
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 2028
    iget-object v0, p0, Lcom/android/camera/CameraActivity$13;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$13;->val$indicator:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/camera/CameraActivity$13;->val$rotationDegrees:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 2029
    return-void
.end method
