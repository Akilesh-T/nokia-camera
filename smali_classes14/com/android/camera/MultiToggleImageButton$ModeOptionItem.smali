.class public Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;
.super Ljava/lang/Object;
.source "MultiToggleImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MultiToggleImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeOptionItem"
.end annotation


# instance fields
.field private final mImageIds:I

.field private final mTextIds:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "imageId"    # I
    .param p2, "textId"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->mImageIds:I

    .line 107
    iput p2, p0, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->mTextIds:I

    .line 108
    return-void
.end method


# virtual methods
.method public getImageId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->mImageIds:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/camera/MultiToggleImageButton$ModeOptionItem;->mTextIds:I

    return v0
.end method
