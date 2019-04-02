.class Lcom/android/camera/app/FilmstripBottomPanel$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FilmstripBottomPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/FilmstripBottomPanel;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/FilmstripBottomPanel;


# direct methods
.method constructor <init>(Lcom/android/camera/app/FilmstripBottomPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/FilmstripBottomPanel;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/camera/app/FilmstripBottomPanel$6;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel$6;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-static {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->access$400(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/widget/ExternalViewerButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/ExternalViewerButton;->updateClingVisibility()V

    .line 292
    return-void
.end method
