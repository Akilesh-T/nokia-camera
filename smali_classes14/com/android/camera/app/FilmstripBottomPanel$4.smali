.class Lcom/android/camera/app/FilmstripBottomPanel$4;
.super Ljava/lang/Object;
.source "FilmstripBottomPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/FilmstripBottomPanel;->setupShareButton()V
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
    .line 237
    iput-object p1, p0, Lcom/android/camera/app/FilmstripBottomPanel$4;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel$4;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-static {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->access$300(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel$4;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-static {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->access$300(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;->onShare()V

    .line 243
    :cond_0
    return-void
.end method
