.class public interface abstract Lcom/android/camera/data/FilmstripItem;
.super Ljava/lang/Object;
.source "FilmstripItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FilmstripItem"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/FilmstripItem;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public abstract delete()Z
.end method

.method public abstract generateThumbnail(IIF)Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;
.end method

.method public abstract getData()Lcom/android/camera/data/FilmstripItemData;
.end method

.method public abstract getDimensions()Lcom/android/camera/util/Size;
.end method

.method public abstract getItemViewType()Lcom/android/camera/data/FilmstripItemType;
.end method

.method public abstract getMediaDetails()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/data/MediaDetails;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetadata()Lcom/android/camera/data/Metadata;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/camera/data/LocalFilmstripDataAdapter;",
            "Z",
            "Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract recycle(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract refresh()Lcom/android/camera/data/FilmstripItem;
.end method

.method public abstract renderFullRes(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract renderThumbnail(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract renderTiny(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract setSuggestedSize(II)V
.end method
