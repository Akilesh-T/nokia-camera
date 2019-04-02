.class Lcom/android/camera/ui/focus/FocusController$4;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/focus/FocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/focus/FocusController;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusController$4;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/android/camera/ui/focus/FocusController;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "clearFocusIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusController$4;->this$0:Lcom/android/camera/ui/focus/FocusController;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusController;->access$300(Lcom/android/camera/ui/focus/FocusController;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 155
    return-void
.end method
