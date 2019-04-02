.class final Lcom/sina/sinalivesdk/refactor/push/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sina/sinalivesdk/refactor/push/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 2000
    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/g;

    invoke-direct {v0, p1}, Lcom/sina/sinalivesdk/refactor/push/g;-><init>(Landroid/os/Parcel;)V

    .line 0
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 1000
    new-array v0, p1, [Lcom/sina/sinalivesdk/refactor/push/g;

    .line 0
    return-object v0
.end method
