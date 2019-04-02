.class Lcom/android/camera/util/PermissionUtil$PermissionCheck$2;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/PermissionUtil$PermissionCheck;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;


# direct methods
.method constructor <init>(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$2;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$2;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-static {v0}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$200(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$2;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-static {v1}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$200(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$2;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-static {v2}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$400(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void
.end method
