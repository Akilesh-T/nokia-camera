.class Lcom/rd/animation/type/SlideAnimation$1;
.super Ljava/lang/Object;
.source "SlideAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rd/animation/type/SlideAnimation;->createAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rd/animation/type/SlideAnimation;


# direct methods
.method constructor <init>(Lcom/rd/animation/type/SlideAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rd/animation/type/SlideAnimation;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/rd/animation/type/SlideAnimation$1;->this$0:Lcom/rd/animation/type/SlideAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/rd/animation/type/SlideAnimation$1;->this$0:Lcom/rd/animation/type/SlideAnimation;

    invoke-static {v0, p1}, Lcom/rd/animation/type/SlideAnimation;->access$000(Lcom/rd/animation/type/SlideAnimation;Landroid/animation/ValueAnimator;)V

    .line 35
    return-void
.end method
