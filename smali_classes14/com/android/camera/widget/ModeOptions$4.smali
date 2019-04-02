.class Lcom/android/camera/widget/ModeOptions$4;
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
    .line 208
    iput-object p1, p0, Lcom/android/camera/widget/ModeOptions$4;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$4;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-static {v0}, Lcom/android/camera/widget/ModeOptions;->access$300(Lcom/android/camera/widget/ModeOptions;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 212
    return-void
.end method
