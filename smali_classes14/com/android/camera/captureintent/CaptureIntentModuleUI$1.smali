.class Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;
.super Ljava/lang/Object;
.source "CaptureIntentModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/CaptureIntentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0, p1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$002(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 99
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$100(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$200(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/FaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$200(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/ui/FaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$1;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0, p1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$300(Lcom/android/camera/captureintent/CaptureIntentModuleUI;Landroid/graphics/RectF;)V

    .line 107
    return-void
.end method
