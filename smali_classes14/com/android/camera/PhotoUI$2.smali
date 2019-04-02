.class Lcom/android/camera/PhotoUI$2;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/PhotoUI$2;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/PhotoUI$2;->this$0:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoUI;->access$102(Lcom/android/camera/PhotoUI;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 95
    return-void
.end method
