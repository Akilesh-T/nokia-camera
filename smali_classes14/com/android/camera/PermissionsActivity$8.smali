.class Lcom/android/camera/PermissionsActivity$8;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PermissionsActivity;->handlePermissionsFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PermissionsActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PermissionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/camera/PermissionsActivity$8;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 367
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$8;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-static {v0}, Lcom/android/camera/PermissionsActivity;->access$300(Lcom/android/camera/PermissionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$8;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PermissionsActivity;->setResult(I)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$8;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-static {v0, v1}, Lcom/android/camera/PermissionsActivity;->access$302(Lcom/android/camera/PermissionsActivity;Z)Z

    .line 372
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$8;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-virtual {v0}, Lcom/android/camera/PermissionsActivity;->finish()V

    .line 374
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
