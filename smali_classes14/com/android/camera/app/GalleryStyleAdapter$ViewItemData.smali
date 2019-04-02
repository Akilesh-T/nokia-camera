.class public Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;
.super Ljava/lang/Object;
.source "GalleryStyleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/GalleryStyleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewItemData"
.end annotation


# instance fields
.field public final mGalleryStyleItemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

.field public final mPosition:I


# direct methods
.method public constructor <init>(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;I)V
    .locals 0
    .param p1, "data"    # Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;
    .param p2, "position"    # I

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mGalleryStyleItemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    .line 680
    iput p2, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mPosition:I

    .line 681
    return-void
.end method
