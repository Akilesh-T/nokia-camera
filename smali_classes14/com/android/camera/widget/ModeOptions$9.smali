.class Lcom/android/camera/widget/ModeOptions$9;
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
    .line 289
    iput-object p1, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 292
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/ModeOptions;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$300(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v1}, Lcom/android/camera/widget/ModeOptions;->access$600(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$300(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$300(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$600(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$600(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    iget-object v1, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v1}, Lcom/android/camera/widget/ModeOptions;->access$600(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/widget/ModeOptions;->access$302(Lcom/android/camera/widget/ModeOptions;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 300
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$9;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {v0}, Lcom/android/camera/widget/ModeOptions;->invalidate()V

    .line 301
    return-void
.end method
