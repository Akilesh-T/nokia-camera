.class Lcom/android/camera/PhotoUI$3;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoUI;->initIntentReviewImageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/camera/PhotoUI$3;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/camera/PhotoUI$3;->this$0:Lcom/android/camera/PhotoUI;

    .line 267
    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$200(Lcom/android/camera/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 269
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 270
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 271
    iget-object v1, p0, Lcom/android/camera/PhotoUI$3;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$200(Lcom/android/camera/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    return-void
.end method
