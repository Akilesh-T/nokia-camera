.class Lcom/android/camera/barcode/BarCodeDialog$1;
.super Ljava/lang/Object;
.source "BarCodeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/barcode/BarCodeDialog;->stopBarCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/barcode/BarCodeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/barcode/BarCodeDialog;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDialog$1;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$1;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-static {v0}, Lcom/android/camera/barcode/BarCodeDialog;->access$000(Lcom/android/camera/barcode/BarCodeDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 70
    return-void
.end method
