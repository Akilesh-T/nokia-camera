.class Lcom/android/camera/ui/BottomBar$3;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomBar;->extendTouchAreaToMatchParent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BottomBar;

.field final synthetic val$button:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomBar;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BottomBar;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/camera/ui/BottomBar$3;->this$0:Lcom/android/camera/ui/BottomBar;

    iput-object p2, p0, Lcom/android/camera/ui/BottomBar$3;->val$parent:Landroid/view/View;

    iput-object p3, p0, Lcom/android/camera/ui/BottomBar$3;->val$button:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 222
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 223
    .local v2, "parentRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar$3;->val$parent:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 225
    .local v0, "buttonRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar$3;->val$button:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 227
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v3, v4, v5

    .line 228
    .local v3, "widthDiff":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v1, v4, v5

    .line 230
    .local v1, "heightDiff":I
    iget v4, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 231
    iget v4, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 232
    iget v4, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 233
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 235
    iget-object v4, p0, Lcom/android/camera/ui/BottomBar$3;->val$parent:Landroid/view/View;

    new-instance v5, Landroid/view/TouchDelegate;

    iget-object v6, p0, Lcom/android/camera/ui/BottomBar$3;->val$button:Landroid/view/View;

    invoke-direct {v5, v0, v6}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 236
    return-void
.end method
