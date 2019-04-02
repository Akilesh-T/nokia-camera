.class public Lcom/android/camera/ui/DetailsDialog;
.super Ljava/lang/Object;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/android/camera/ui/DetailsDialog;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaDetails"    # Lcom/android/camera/data/MediaDetails;

    .prologue
    .line 55
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040034

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 57
    .local v1, "detailsList":Landroid/widget/ListView;
    new-instance v2, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/DetailsDialog$DetailsAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/MediaDetails;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080062

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08004d

    new-instance v4, Lcom/android/camera/ui/DetailsDialog$1;

    invoke-direct {v4}, Lcom/android/camera/ui/DetailsDialog$1;-><init>()V

    .line 62
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 61
    return-object v2
.end method

.method private static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 344
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    .line 345
    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I

    .prologue
    .line 292
    sparse-switch p1, :sswitch_data_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 294
    :sswitch_0
    const v0, 0x7f08027e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :sswitch_1
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :sswitch_2
    const v0, 0x7f080275

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :sswitch_3
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :sswitch_4
    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :sswitch_5
    const v0, 0x7f0802a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :sswitch_6
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :sswitch_7
    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :sswitch_8
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :sswitch_9
    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :sswitch_a
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :sswitch_b
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :sswitch_c
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :sswitch_d
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :sswitch_e
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :sswitch_f
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :sswitch_10
    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 328
    :sswitch_11
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :sswitch_12
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_e
        0x6b -> :sswitch_11
        0x6c -> :sswitch_12
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method
