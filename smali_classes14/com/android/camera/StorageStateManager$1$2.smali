.class Lcom/android/camera/StorageStateManager$1$2;
.super Ljava/lang/Object;
.source "StorageStateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/StorageStateManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/StorageStateManager$1;


# direct methods
.method constructor <init>(Lcom/android/camera/StorageStateManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/StorageStateManager$1;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/StorageStateManager$1$2;->this$1:Lcom/android/camera/StorageStateManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 199
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 200
    return-void
.end method
