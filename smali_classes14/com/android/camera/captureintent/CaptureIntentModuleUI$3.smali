.class Lcom/android/camera/captureintent/CaptureIntentModuleUI$3;
.super Ljava/lang/Object;
.source "CaptureIntentModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/CaptureIntentModuleUI;->showReviewUI(Landroid/graphics/Bitmap;I)V
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
    .line 378
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$3;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$3;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1400(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;->onReviewPlayClicked()V

    .line 382
    return-void
.end method
