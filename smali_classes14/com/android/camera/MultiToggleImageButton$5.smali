.class Lcom/android/camera/MultiToggleImageButton$5;
.super Ljava/lang/Object;
.source "MultiToggleImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MultiToggleImageButton;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MultiToggleImageButton;

.field final synthetic val$a:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Lcom/android/camera/MultiToggleImageButton;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/MultiToggleImageButton;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/camera/MultiToggleImageButton$5;->this$0:Lcom/android/camera/MultiToggleImageButton;

    iput-object p2, p0, Lcom/android/camera/MultiToggleImageButton$5;->val$a:Landroid/content/res/TypedArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 379
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton$5;->val$a:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 380
    .local v2, "imageIds":I
    if-lez v2, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton$5;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v3, v2, v5}, Lcom/android/camera/MultiToggleImageButton;->overrideImageIds(IZ)V

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton$5;->val$a:Landroid/content/res/TypedArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 384
    .local v0, "descIds":I
    if-lez v0, :cond_1

    .line 385
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton$5;->this$0:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v3, v0, v5}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(IZ)V

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton$5;->val$a:Landroid/content/res/TypedArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 388
    .local v1, "disableAnimation":Z
    if-eqz v1, :cond_2

    .line 389
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton$5;->this$0:Lcom/android/camera/MultiToggleImageButton;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/MultiToggleImageButton;->setAnimDirection(I)V

    .line 391
    :cond_2
    iget-object v3, p0, Lcom/android/camera/MultiToggleImageButton$5;->val$a:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 392
    return-void
.end method
