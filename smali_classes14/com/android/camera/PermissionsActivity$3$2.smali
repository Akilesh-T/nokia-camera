.class Lcom/android/camera/PermissionsActivity$3$2;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PermissionsActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PermissionsActivity$3;


# direct methods
.method constructor <init>(Lcom/android/camera/PermissionsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PermissionsActivity$3;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/PermissionsActivity$3$2;->this$1:Lcom/android/camera/PermissionsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 201
    return-void
.end method
