.class Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "TemplatePhotoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TemplatePhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/TemplatePhotoUI;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/TemplatePhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/TemplatePhotoUI;Lcom/android/camera/TemplatePhotoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/TemplatePhotoUI;
    .param p2, "x1"    # Lcom/android/camera/TemplatePhotoUI$1;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/TemplatePhotoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/TemplatePhotoUI;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoUI;->access$200(Lcom/android/camera/TemplatePhotoUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/TemplatePhotoUI;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoUI;->access$200(Lcom/android/camera/TemplatePhotoUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/TemplatePhotoUI;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoUI;->access$200(Lcom/android/camera/TemplatePhotoUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/TemplatePhotoUI;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoUI;->access$200(Lcom/android/camera/TemplatePhotoUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/TemplatePhotoUI;

    invoke-static {v0}, Lcom/android/camera/TemplatePhotoUI;->access$000(Lcom/android/camera/TemplatePhotoUI;)Lcom/android/camera/TemplatePhotoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/TemplatePhotoController;->onZoomChanged(F)V

    .line 297
    return-void
.end method
