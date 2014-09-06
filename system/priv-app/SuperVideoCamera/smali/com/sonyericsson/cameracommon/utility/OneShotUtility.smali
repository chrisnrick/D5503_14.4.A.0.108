.class public Lcom/sonyericsson/cameracommon/utility/OneShotUtility;
.super Ljava/lang/Object;
.source "OneShotUtility.java"


# static fields
.field public static final KEY_ADD_TO_MEDIA_STORE:Ljava/lang/String; = "addToMediaStore"

.field public static final REQUEST_ONE_SHOT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(DDII)I
    .locals 7
    .param p0, "w"    # D
    .param p2, "h"    # D
    .param p4, "minSideLength"    # I
    .param p5, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x1

    .line 95
    if-gez p5, :cond_1

    move v0, v2

    .line 97
    .local v0, "lowerBound":I
    :goto_0
    if-gez p4, :cond_2

    const/16 v1, 0x80

    .line 101
    .local v1, "upperBound":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 111
    .end local v0    # "lowerBound":I
    :cond_0
    :goto_2
    return v0

    .line 95
    .end local v1    # "upperBound":I
    :cond_1
    mul-double v3, p0, p2

    int-to-double v5, p5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    goto :goto_0

    .line 97
    .restart local v0    # "lowerBound":I
    :cond_2
    int-to-double v3, p4

    div-double v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    int-to-double v5, p4

    div-double v5, p2, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-int v1, v3

    goto :goto_1

    .line 106
    .restart local v1    # "upperBound":I
    :cond_3
    if-gez p5, :cond_4

    if-gez p4, :cond_4

    move v0, v2

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    if-ltz p4, :cond_0

    move v0, v1

    .line 111
    goto :goto_2
.end method

.method public static computeSampleSize(DDII)I
    .locals 3
    .param p0, "w"    # D
    .param p2, "h"    # D
    .param p4, "minSideLength"    # I
    .param p5, "maxNumOfPixels"    # I

    .prologue
    .line 77
    invoke-static/range {p0 .. p5}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->computeInitialSampleSize(DDII)I

    move-result v0

    .line 81
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 83
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 84
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 89
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    .line 46
    new-instance v1, Lcom/sonyericsson/cameracommon/utility/ImageLoader;

    invoke-direct {v1, p0, p1, p3}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createResultIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 20
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    new-instance v17, Landroid/content/Intent;

    const-string v3, "inline-data"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v17, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 56
    const/16 v16, 0x0

    .line 57
    .local v16, "attach":Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 58
    .local v19, "temp":Landroid/graphics/Bitmap;
    const v8, 0xc800

    .line 59
    .local v8, "maxNumOfPixels":I
    const/high16 v9, 0x3f800000

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    const/4 v7, -0x1

    invoke-static/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->computeSampleSize(DDII)I

    move-result v3

    int-to-float v3, v3

    div-float v18, v9, v3

    .line 61
    .local v18, "scale":F
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v14, "m":Landroid/graphics/Matrix;
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 64
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object/from16 v9, p2

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 65
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 66
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    const-string v3, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    .end local v8    # "maxNumOfPixels":I
    .end local v14    # "m":Landroid/graphics/Matrix;
    .end local v16    # "attach":Landroid/graphics/Bitmap;
    .end local v18    # "scale":F
    .end local v19    # "temp":Landroid/graphics/Bitmap;
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    return-object v17
.end method
