.class public Lcom/pedro/encoder/utils/gl/gif/ReadGifFromRawFolder;
.super Ljava/lang/Object;
.source "ReadGifFromRawFolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringFromRaw(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 14
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method
