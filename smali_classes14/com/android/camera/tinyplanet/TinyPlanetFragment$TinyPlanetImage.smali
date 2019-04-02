.class final Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;
.super Ljava/lang/Object;
.source "TinyPlanetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TinyPlanetImage"
.end annotation


# instance fields
.field public final mJpegData:[B

.field public final mSize:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "jpegData"    # [B
    .param p2, "size"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->mJpegData:[B

    .line 131
    iput p2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->mSize:I

    .line 132
    return-void
.end method
