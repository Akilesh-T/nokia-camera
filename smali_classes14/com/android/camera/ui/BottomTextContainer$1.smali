.class Lcom/android/camera/ui/BottomTextContainer$1;
.super Ljava/lang/Object;
.source "BottomTextContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomTextContainer;->expandViewTouchDelegate(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BottomTextContainer;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomTextContainer;Landroid/view/View;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer$1;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iput-object p2, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$top:I

    iput p4, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$bottom:I

    iput p5, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$left:I

    iput p6, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$right:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 368
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$view:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 369
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 370
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 371
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 372
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 373
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$right:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 374
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$view:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 375
    .local v1, "touchDelegate":Landroid/view/TouchDelegate;
    const-class v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 378
    :cond_0
    return-void
.end method
