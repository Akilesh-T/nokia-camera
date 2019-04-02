.class Lcom/android/camera/widget/ModeOptions$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ModeOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ModeOptions;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ModeOptions;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ModeOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/ModeOptions;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/camera/widget/ModeOptions$7;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$7;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$500(Lcom/android/camera/widget/ModeOptions;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$7;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$500(Lcom/android/camera/widget/ModeOptions;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$7;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0, v1}, Lcom/android/camera/widget/ModeOptions;->access$102(Lcom/android/camera/widget/ModeOptions;Z)Z

    .line 274
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$7;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0, v1}, Lcom/android/camera/widget/ModeOptions;->access$202(Lcom/android/camera/widget/ModeOptions;Z)Z

    .line 275
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$7;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {v0}, Lcom/android/camera/widget/ModeOptions;->invalidate()V

    .line 277
    :cond_0
    return-void
.end method
