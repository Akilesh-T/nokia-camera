.class Lcom/android/camera/PhotoUI$DecodeTask;
.super Landroid/os/AsyncTask;
.source "PhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mData:[B

.field private final mMirror:Z

.field private final mOrientation:I

.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoUI;[BIZ)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "orientation"    # I
    .param p4, "mirror"    # Z

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/PhotoUI$DecodeTask;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/android/camera/PhotoUI$DecodeTask;->mData:[B

    .line 198
    iput p3, p0, Lcom/android/camera/PhotoUI$DecodeTask;->mOrientation:I

    .line 199
    iput-boolean p4, p0, Lcom/android/camera/PhotoUI$DecodeTask;->mMirror:Z

    .line 200
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/PhotoUI$DecodeTask;->mData:[B

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/camera/PhotoUI$DecodeTask;->mOrientation:I

    iget-boolean v3, p0, Lcom/android/camera/PhotoUI$DecodeTask;->mMirror:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/captureintent/PictureDecoder;->decode([BIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI$DecodeTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
