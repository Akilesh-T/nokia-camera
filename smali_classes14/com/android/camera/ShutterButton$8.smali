.class Lcom/android/camera/ShutterButton$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ShutterButton;->doSwipeAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ShutterButton;

.field final synthetic val$swipe:I


# direct methods
.method constructor <init>(Lcom/android/camera/ShutterButton;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ShutterButton;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/camera/ShutterButton$8;->this$0:Lcom/android/camera/ShutterButton;

    iput p2, p0, Lcom/android/camera/ShutterButton$8;->val$swipe:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ShutterButton$8;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v1}, Lcom/android/camera/ShutterButton;->access$100(Lcom/android/camera/ShutterButton;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 412
    .local v0, "listener":Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    iget v2, p0, Lcom/android/camera/ShutterButton$8;->val$swipe:I

    invoke-interface {v0, v2}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonSwiped(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v0    # "listener":Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    :catch_0
    move-exception v1

    .line 417
    :cond_0
    return-void
.end method
