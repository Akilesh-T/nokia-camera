.class Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;
.super Ljava/lang/Thread;
.source "BarCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartImportEmail"
.end annotation


# instance fields
.field private email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeDialog;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 0
    .param p2, "email"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 972
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 973
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 977
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 978
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$1302(Lcom/android/camera/barcode/BarCodeDialog;Z)Z

    .line 979
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$1400(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V

    .line 980
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$1302(Lcom/android/camera/barcode/BarCodeDialog;Z)Z

    .line 981
    return-void
.end method
