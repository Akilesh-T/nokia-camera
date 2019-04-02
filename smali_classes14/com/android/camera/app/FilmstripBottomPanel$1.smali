.class Lcom/android/camera/app/FilmstripBottomPanel$1;
.super Ljava/lang/Object;
.source "FilmstripBottomPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/FilmstripBottomPanel;->setupEditButton()V
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
    .line 193
    iput-object p1, p0, Lcom/android/camera/app/FilmstripBottomPanel$1;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel$1;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-static {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->access$000(Lcom/android/camera/app/FilmstripBottomPanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel$1;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-static {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->access$200(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/FilmstripBottomPanel$1;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-static {v1}, Lcom/android/camera/app/FilmstripBottomPanel;->access$100(Lcom/android/camera/app/FilmstripBottomPanel;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->openContextMenu(Landroid/view/View;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel$1;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-static {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->access$300(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel$1;->this$0:Lcom/android/camera/app/FilmstripBottomPanel;

    invoke-static {v0}, Lcom/android/camera/app/FilmstripBottomPanel;->access$300(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;->onEdit()V

    goto :goto_0
.end method
